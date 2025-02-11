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

The goal of the project is to provide a shared benchmark to evaluate and directly compare automated theorem proving systems based on the formal systems targeted, initially Lean, Isabelle, and Metamath (targeting also Hol Light).

Since miniF2F has not yet been formalized in Rocq,
this project also aims to provide a reliable and correct formalization of the dataset in Rocq,
expanding its utility as a benchmark for future research.

## Overview

MiniF2F consists of mathematical exercises taken from olympiads (AMC, AIME, IMO), as well as high-school and undergraduate courses. These exercises, presented as theorems, are divided into two sets, ‘test’ and ‘valid’. The table below indicates the number of theorems in each set:

|          | Test | Valid |
|:--------:|:----:|:-----:|
| Theorems |  244 |  244  |

MiniF2F-rocq is created as a shared and useful resource for the machine learning community working on proof automation in Rocq. Therefore, there is no obligation regarding the use of miniF2F-rocq or results build upon it.

However, miniF2F-rocq benefits heavily from all contributions, such as suggesting better statements or additional proofs, or fixing bugs. So if you have new findings useful for the community, please consider contributing them back to enhance the benchmark.

## Example problem statement (mathd_algebra_478)

### Informal description

The volume of a cone is given by the formula $V = \frac{1}{3}Bh$, where $B$ is the area of the base and $h$ is the height. The area of the base of a cone is 30 square units, and its height is 6.5 units. What is the number of cubic units in its volume? Show that it is 65.

### Rocq

```coq
Theorem mathd_algebra_478:
  forall (b h v : R),
  (0 < b /\ 0 < h /\ 0 < v) ->
  v = (1/3) * (b * h) ->
  b = 30 ->
  h = 13/2 ->
  v = 65.
Proof.
Admitted.
```

## Audit

To ensure that the Rocq version of miniF2F becomes a reliable benchmark for automated proof evaluation,
an audit of the translated theorems is essential.

While the LLM-generated translations type-check and accurately capture the meaning of the original statements from natural language, Isabelle, and Lean,
the formulation of the theorems may not always be ideal for efficient proof development.

The goal of the audit is to refine the theorem statements and ensure that their formulations are as proof-friendly as possible.

Progress of the audit so far:

`|··················································| % 0`

We extend our heartfelt thanks to all contributors who helped audit and refine the theorem statements.
Their expertise and insights have been invaluable to this project.
Special thanks to [Contributor Names] for their dedicated efforts.
