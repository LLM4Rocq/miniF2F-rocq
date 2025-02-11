# miniF2F-rocq

Recent advances in Large Language Models (LLMs) have demonstrated impressive capabilities in generating formal proofs
using interactive theorem provers (ITPs) such as Isabelle, Lean, and Rocq.
However, fundamental differences between these proof systems have led to the development of distinct datasets,
making it challenging to compare techniques designed for different proof assistants.

LLMs are particularly well-suited for translating between programming languages that share extensive resources.
This work investigates whether state-of-the-art LLMs can be leveraged to automatically translate a dataset of formal theorems from one proof assistant to another.

We focus on [miniF2F](https://github.com/facebookresearch/miniF2F),
a dataset of high-school-level mathematical problems that has already been formalized in Lean, Isabelle/HOL, and MetaMath.
It is widely used as a benchmark for evaluating machine learning-based automated proof techniques.

Since miniF2F has not yet been formalized in Rocq,
this project also aims to provide a reliable and correct formalization of the dataset in Rocq,
expanding its utility as a benchmark for future research.

## Process

### Install

To run the agent, you need to install [coq-lsp](https://github.com/ejgallego/coq-lsp) >= 0.2.0 . On Unix-like systems, this is best done using the [OPAM package manager](https://opam.ocaml.org/).

```bash
$ opam install coq-lsp
```

Additionally, the python package [nlir](https://github.com/LLM4Rocq/nlir) is required. This can be done by cloning the repository and then installing the package.

```bash
$ git clone https://github.com/LLM4Rocq/nlir.git
$ cd nlir
$ pip install -e .
```

### Getting started

First launch `pet-server` in a terminal

```bash
$ pet-server
```

To communicate with the LiteLLM API, and depending on the provider of the LLM your are using, you need to export some environment variables.
E.g., to use OpenAI models, you need to export the following variables:

```bash
export OPENAI_API_KEY="your secret key"
export OPENAI_PROJECT="your project id"
```

The default configuration can be found in `conf/config.yaml`.
You can override every field (see below).
E.g., to try translating the dataset provided in [example](./example/):

```
$ python translate.py workspace=example
```

You should see each attempt of translation in stdout.

### Configurations

There are two modes for this program, one can translate a single theorem by specifying its name or translate the whole set if no theorem is specified.

Additionally, you can also supervise the model by giving him remarks or hints after each error.

We use [hydra](https://hydra.cc/docs/intro/) to manage the configurations.


```bash
$ python translate.py --help
translate is powered by Hydra.

There are two possible modes:
- Use the option `theorem=my_theorem` to translate one theorem.
- With no theorem specified, all theorems are translated.

To enable supervision of the model, use the option `supervise=true`.

Alternatively you can use your own config file with the option `--config-name my_config.yaml`.
Config files should be in the `conf` directory.

== Config ==
Override anything in the config (foo.bar=value)

workspace: ""             # Path to the set of theorems
theorem: null             # Name of the single theorem to be translated
supervise: false          # Supervised translation or not
log_dir: "logs/translate" # Directory to store the log files

agent:
  model_id: qwencode7b    # LLM id
  temperature: 1.0        # Temperature used
  local: true             # Is the model local or not
  provider: ollama        # Provider of the model


Powered by Hydra (https://hydra.cc)
Use --hydra-help to view Hydra specific help
```

You can use your own configuration file by putting it in the folder [conf](./conf) and writing:

```bash
$ python translate.py --config-name my_config
```

## Audit

To ensure that the Rocq version of miniF2F becomes a reliable benchmark for automated proof evaluation,
an audit of the translated theorems is essential.

While the LLM-generated translations type-check and accurately capture the meaning of the original statements from natural language, Isabelle, and Lean,
the formulation of the theorems may not always be ideal for efficient proof development.

The goal of the audit is to refine the theorem statements and ensure that their formulations are as proof-friendly as possible.

Progress of the audit so far: `|··················································| % 0`

We extend our heartfelt thanks to all contributors who helped audit and refine the theorem statements.
Their expertise and insights have been invaluable to this project.
Special thanks to [Contributor Names] for their dedicated efforts.
