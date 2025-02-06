Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_99:
  forall n : nat,
  (2 * n) mod 47 = 15 ->
  n mod 47 = 31.
Proof.
Admitted.