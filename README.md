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

## Audit process

To ensure that the Rocq version of miniF2F becomes a reliable benchmark for automated proof evaluation,
an audit of the translated theorems is essential.

While the LLM-generated translations type-check and accurately capture the meaning of the original statements from natural language, Isabelle, and Lean,
the formulation of the theorems may not always be ideal for efficient proof development.

The goal of the audit is to refine the theorem statements and ensure that their formulations are as proof-friendly as possible.

Progress of the audit so far: `|█████·············································| % 10`

We extend our heartfelt thanks to all contributors who helped audit and refine the theorem statements.
Their expertise and insights have been invaluable to this project.
Special thanks to [Contributor Names] for their dedicated efforts.
