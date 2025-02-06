Require Import Nat.
Require Import Arith.

Theorem mathd_numbertheory_156 :
  forall n : nat,
  n > 0 ->
  gcd (n + 7) (2 * n + 1) <= 13.
Proof.
Admitted.