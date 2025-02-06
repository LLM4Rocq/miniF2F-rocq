Require Import ZArith.
Require Import Znumtheory.

Theorem amc12b_2002_p11:
  forall (a b : Z),
    prime a ->
    prime b ->
    prime (a + b) ->
    prime (a - b) ->
    prime (a + b + (a - b + (a + b))).

Proof.
