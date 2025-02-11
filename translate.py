import json
import hydra
import weave
import numpy as np
from omegaconf import DictConfig
from datetime import datetime
from pathlib import Path
from pytanque import Pytanque
import sys
from tqdm import tqdm

from nlir.agent import LiteLLM
from env import TranslateEnv
from nlir.search import naive_search
from extract import extract_theorems_miniF2F

@hydra.main(version_base=None, config_path="conf", config_name="config")
def translate(cfg: DictConfig) -> float :
    """
    Translates one or a complete set of theorems to Rocq in several try.

    Args:
        cfg (Dictconfig): The configuration needed for the translation.

    Returns:
        Nothing, translates theorems in resulting files
    """

    # Set up the petanque client
    wk_path = Path(cfg.workspace).expanduser().absolute()
    pet = Pytanque(cfg.petanque.address, cfg.petanque.port)
    pet.connect()
    pet.set_workspace(False, str(wk_path))

    # Extract all theorems
    theorems = extract_theorems_miniF2F(cfg.workspace)

    # Only translate one theorem
    if cfg.theorem:

        # Find the theorem
        theorem = None
        for name, code in theorems["valid"].items():
            if cfg.theorem == name:
                theorem = name, code
        for name, code in theorems["test"].items():
            if cfg.theorem == name:
                theorem = name, code
        if theorem is None:
            print(f"The theorem {cfg.theorem} has not been found.")
            sys.exit(1)

        # Set up the log file and the result file
        dt = datetime.now().strftime("%y%m%d_%H%M%S")
        log_path = Path(cfg.log_dir + "/single", f"{cfg.theorem}_{dt}.jsonl").absolute()
        log_path.parent.mkdir(parents=True, exist_ok=True)
        file_path = Path(cfg.workspace + "/rocq/single", f"{cfg.theorem}_{dt}.v").absolute()
        file_path.parent.mkdir(parents=True, exist_ok=True)

        # Create the agent
        agent = LiteLLM(str(log_path), cfg.agent)

        # Create the petanque env
        env = TranslateEnv(pet, str(wk_path), str(file_path), theorem, cfg.supervise)

        # Translate the theorem
        print(f"Try to translate {cfg.theorem} in {file_path}.")
        status = naive_search(agent, env, cfg.search.max_steps)
        print(f"\n\n---\nSuccess: {status.success}")
        print("---\n\n")

        return status.success

    # Translates all theorems
    dt = datetime.now().strftime("%y%m%d_%H%M%S")

    # Create a weave session if needed
    if cfg.weave:
        model_id = cfg.model_id
        name_expe = f"{model_id.split('/')[-1]}:{cfg.workspace}"
        weave.init(name_expe)

    results = {"names": [], "success": [], "steps": []}
    res_path = Path(cfg.workspace + f"/rocq/{dt}", f"eval_results.json")
    res_path.parent.mkdir(parents=True, exist_ok=True)

    # Translating valid theorems
    print("Translating valid theorems.")

    for theorem in tqdm(theorems["valid"].items()):

        # Set up the log file and the result file
        log_path = Path(cfg.log_dir + f"/{dt}/valid", f"{theorem[0]}.jsonl").absolute()
        log_path.parent.mkdir(parents=True, exist_ok=True)
        file_path = Path(cfg.workspace + f"/rocq/{dt}/valid", f"{theorem[0]}.v").absolute()
        file_path.parent.mkdir(parents=True, exist_ok=True)

        # Create the agent
        agent = LiteLLM(str(log_path), cfg.agent)

        # Create the petanque env
        env = TranslateEnv(pet, str(wk_path), str(file_path), theorem, cfg.supervise)

        # Translate the theorem
        with weave.attributes({"file": file_path, "thm": theorem[0]}):
            status = naive_search(agent, env, cfg.search.max_steps)

        # Adding the result
        results["names"].append(f"{env.file}:{env.thm}")
        results["success"].append(status.success)
        results["steps"].append(status.steps)
        with open(res_path, 'w') as rf:
            json.dump(results, rf, indent=2)

    print("Done translating valid theorems.")

    # Translating test theorems
    print("Translating test theorems.")

    for theorem in tqdm(theorems["test"].items()):

        # Set up the log file and the result file
        log_path = Path(cfg.log_dir + f"/{dt}/test", f"{theorem[0]}.jsonl").absolute()
        log_path.parent.mkdir(parents=True, exist_ok=True)
        file_path = Path(cfg.workspace + f"/rocq/{dt}/test", f"{theorem[0]}.v").absolute()
        file_path.parent.mkdir(parents=True, exist_ok=True)

        # Create the agent
        agent = LiteLLM(str(log_path), cfg.agent)

        # Create the petanque env
        env = TranslateEnv(pet, str(wk_path), str(file_path), theorem, cfg.supervise)

        # Translate the theorem
        with weave.attributes({"file": file_path, "thm": theorem[0]}):
            status = naive_search(agent, env, cfg.search.max_steps)

        # Adding the result
        results["names"].append(f"{env.file}:{env.thm}")
        results["success"].append(status.success)
        results["steps"].append(status.steps)
        with open(res_path, 'w') as rf:
            json.dump(results, rf, indent=2)

    print("Done translating test theorems.")

    # Pretty print the summary
    print("\n\n--- Summary ---")
    print(f"Successes: {np.sum(results["success"])}")
    print(f"Success rate: {np.mean(results["success"])}")
    print(f"Average number of steps: {np.mean(results["steps"])}")
    print("---\n\n")

    sys.exit(0)

if __name__ == "__main__":
    translate()
