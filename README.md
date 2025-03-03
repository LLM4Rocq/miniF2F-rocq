# miniF2F-rocq

Recent advances in Large Language Models (LLMs) have demonstrated impressive capabilities in generating formal proofs
using interactive theorem provers (ITPs) such as Isabelle, Lean, and Rocq.
However, fundamental differences between these proof systems have led to the development of distinct datasets,
making it challenging to compare techniques designed for different proof assistants.

[miniF2F](https://github.com/facebookresearch/miniF2F) is 
a dataset of high-school-level mathematical problems that has already been formalized in Lean, Isabelle/HOL, and MetaMath.
It is widely used as a benchmark for evaluating machine learning-based automated proof techniques.

This project is a formalization of the MiniF2F dataset in Rocq:
- automatically translated using the latest LLMs (at the time of translation),
- checked against the Rocq prover (all theorems are valid Rocq code),
- currently being audited by Rocq experts.

## Overview

MiniF2F consists of mathematical exercises taken from olympiads (AMC, AIME, IMO), as well as high-school and undergraduate courses. These exercises, presented as theorems, are divided into two sets, ‘test’ and ‘valid’. The table below indicates the number of theorems in each set:

|          | Test | Valid |
|:--------:|:----:|:-----:|
| Theorems |  244 |  244  |

MiniF2F-rocq is designed as a shared and valuable resource for the machine learning community working on proof automation in Rocq. There are no restrictions on its use or on results build upon it.

However, MiniF2F-rocq greatly benefits from contributions, whether by improving existing statements, adding new proofs, or fixing bugs. If you discover insights that could be useful to the community, please consider contributing them back to help refine and expand the benchmark.

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

`|██████████········································| % 20`

We extend our heartfelt thanks to all contributors who helped audit and refine the theorem statements.
Their expertise and insights have been invaluable to this project.
Special thanks to
Pierre Boutillier,
Hugo Herbelin,
Pierre Letouzey and
Julien Narboux
for their dedicated efforts.


## Automatic translation

We automatically generated the Rocq theorems using three sources: 
- a natural language description, 
- the Lean formalization, and 
- the Isabelle formalization. 

We conducted our experiment in 3 stages of increasing complexity, from basic one-shot prompting to multi-turn conversations that incorporate feedback from unsuccessful attempts. 
At each stage, we perform multiple rounds of translation using increasingly advanced models: GPT-4o mini, Claude 3.5 Sonnet, o1 mini, and o1. 
We successfully translated 478 out of 488 theorems, and manually translated the last theorems.

The agent used for the translation task is in the `translator` directory.
More details can be found in [this abstract](./minif2f2rocq.pdf)