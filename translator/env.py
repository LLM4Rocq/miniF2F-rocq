import re
import os
from typing import Tuple
from pytanque import Pytanque, PetanqueError

from nlir.agent import UserMessage, SystemMessage, Message, Response
from nlir.petanque import Env
import prompt
import copy

class TranslateEnv(Env):
    """
    Petanque environment used for translating.
    """

    def __init__(self, pet: Pytanque, workspace: str, file: str, thm: Tuple[str, str], supervise: bool):
        self.pet = pet

        self.workspace = workspace
        self.file = file
        self.path = os.path.join(workspace, file)

        self.thm = thm[0]
        self.thm_code = thm[1]
        self.proof = [self.thm]

        self.n_interactions = 0
        self.prev_unsuccess = ""

        self.supervise = supervise

        with open(os.path.join(workspace, file), "w") as f:
            f.write("")
        self.state = self.pet.get_state(self.path, (0, 0))

        self.finished = False

    def deepcopy(self):
        new = super().deepcopy()
        new.state = copy.deepcopy(self.state)
        new.thm_code = copy.deepcopy(self.thm_code)
        new.supervise = copy.deepcopy(self.supervise)
        new.finished = copy.deepcopy(self.finished)
        new.prev_unsuccess = copy.deepcopy(self.prev_unsuccess)

    def parse(self, message: Response) -> str:
        """
        Parse an agent response to get a theorem.
        """

        if message.content:

            # Regular expression to match the coq code
            coq_code_pattern = re.compile(
                r"```(?:coq)?\s(?P<code>[\S\s]*?)\s```",
                re.DOTALL
            )

            # Find all coq code writen
            coq_codes = coq_code_pattern.finditer(message.content)
            coq_code = ""
            for match in coq_codes:
                coq_code += match.group('code') + "\n\n"

            # Remove the comment
            new_coq_code = coq_code + "\n"
            while new_coq_code != coq_code:
                coq_code = new_coq_code
                new_coq_code = re.sub(r'\(\*([\s\S](?!\(\*))*?\*\)', '', coq_code)

            # Remove the proof
            theorem_pattern = re.compile(
                r"(?P<body>[\s\S]*)Proof",
                re.DOTALL
            )
            theorems = theorem_pattern.finditer(coq_code)
            theorems = [match.group('body') for match in theorems]

            if len(theorems):
                theorem = theorems[-1]
            else:
                theorem = coq_code

            return theorem + "\nProof.\n"

        else:
            return ""

    def write(self, thm: str):
        """
        Write the proof to the file.

        /!\\ overide the previous content of the file /!\\
        """

        with open(self.path, 'w') as file:
            file.write(thm)

    def exec(self, message: Response):
        """
        Parse and execute the LLM response.
        """

        self.n_interactions += 1
        thm = self.parse(message)
        # self.write(thm)
        self.proof = [thm]  # For better end message of the search algorithm

        try:
            self.state = self.pet.run_tac(self.state, thm)
            self.finished = True
            self.write(thm)
        except PetanqueError as err:
            unsuccess = prompt.make_unsuccess.format(code=thm, message=err.message)
            if self.supervise:
                print(unsuccess, end="\n\n")
                advice = "\n\nwith advice:\n" + input("Tell the error to the agent, you can also give advices:\n")
            else:
                advice = ""
            self.proof = [unsuccess + advice ]
            self.prev_unsuccess += unsuccess + advice + "\n\n"

    @property
    def proof_finished(self) -> bool:
        return self.finished

    def check_proof(self) -> bool:
        return self.finished

    @property
    def prompt(self) -> list[Message]:
        """
        Build the translation prompt.
        """

        context = prompt.system_prompt

        if not self.n_interactions:
            content = prompt.first_user_prompt.format(
                thm_name = self.thm,
                thm_informal = self.thm_code["informal"],
                thm_lean = self.thm_code["lean"],
                thm_isabelle = self.thm_code["isabelle"]
            )
        else:
            content = prompt.user_prompt.format(
                n_interactions = self.n_interactions,
                thm_name = self.thm,
                thm_informal = self.thm_code["informal"],
                thm_lean = self.thm_code["lean"],
                thm_isabelle = self.thm_code["isabelle"],
                previous_unsuccessful = self.prev_unsuccess
            )

        return [
            SystemMessage(role="system", content=context),
            UserMessage(role="user", content=content)
        ]

    @property
    def info_for_comparison(self) -> str:
        """
        Build the string containing the informations to be included in the comparison prompt.
        """

        return prompt.prompt_for_comparison.format(
            n_interactions = self.n_interactions,
            previous_unsuccessful = self.prev_unsuccess
        )
