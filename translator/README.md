# Translation process

## Install

To run the agent, you need to install a custom version of [coq-lsp](https://github.com/ejgallego/coq-lsp). The custom version is available at https://github.com/LLM4Rocq/coq-lsp/tree/MorePetanqueCommands. Because this is a custom version of coq-lsp, a specific version of [coq](https://github.com/coq/coq) is needed. The complete installation using the [OPAM package manager](https://opam.ocaml.org/) (for Unix-like systems) can be done as follow:

```bash
$ opam switch create custom_coq_lsp 5.1.0   # Optional: create a new switch
$ opam pin add rocq-runtime https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam pin add rocq-core https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam pin add rocq-stdlib https://github.com/coq/stdlib.git#155be26dc10a8b6ddb3cfbdd4c144c077c583b5f
$ opam pin add rocq https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam pin add coq-core https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam pin add coq-stdlib https://github.com/coq/stdlib.git#155be26dc10a8b6ddb3cfbdd4c144c077c583b5f
$ opam pin add coqide-server https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam pin add coq https://github.com/coq/coq.git#7d4ec9ecfef45f6536d144b3d7919e4129d73274
$ opam install lwt logs   # Needed for petanque to work
$ opam pin coq-lsp https://github.com/LLM4Rocq/coq-lsp.git#MorePetanqueCommands
```

Additionally, the python package [nlir](https://github.com/LLM4Rocq/nlir) is required. It can be installed as follow:

```bash
$ pip install git+https://github.com/LLM4Rocq/nlir
```

However, a different version of [pytanque](https://github.com/LLM4Rocq/pytanque) is required:

```bash
$ pip uninstall pytanque
$ pip install git+https://github.com/LLM4Rocq/pytanque.git@MoreCommands
```

## Getting started

First launch `pet-server` in a terminal

```bash
$ pet-server
```

To communicate with the provider of the LLM your are using, you need to export some environment variables.
E.g., to use OpenAI models, you need to export the following variables:

```bash
$ export OPENAI_API_KEY="your secret key"
$ export OPENAI_PROJECT="your project id"
```

The default configuration can be found in `conf/config.yaml`.
You can override every field (see below).
E.g., to try translating the dataset provided in [example](./example/):

```bash
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
