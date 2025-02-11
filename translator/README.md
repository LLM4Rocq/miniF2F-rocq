# Translation process

## Install

To run the agent, you need to install [coq-lsp](https://github.com/ejgallego/coq-lsp) >= 0.2.0 . On Unix-like systems, this is best done using the [OPAM package manager](https://opam.ocaml.org/).

```bash
$ opam install coq-lsp
```

Additionally, the python package [nlir](https://github.com/LLM4Rocq/nlir) is required. It can be installed as follow:

```bash
$ pip install git+https://github.com/LLM4Rocq/nlir
```

## Getting started

First launch `pet-server` in a terminal

```bash
$ pet-server
```

To communicate with the provider of the LLM your are using, you need to export some environment variables.
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

## Configurations

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
