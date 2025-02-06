Require Import Nat.
Require Import ZArith.
Require Import Znumtheory.

Theorem induction_divisibility_3div2tooddnp1:
  forall n : nat,
  (exists k, 2^(2 * n + 1) + 1 = 3 * k)%nat.
Proof.
Admitted.