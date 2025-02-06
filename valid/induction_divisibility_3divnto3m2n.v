Require Import Nat.
Require Import Arith.

Theorem induction_divisibility_3divnto3m2n :
  forall n : nat, exists k : nat, n^3 + 2*n = 3*k.
Proof.
Admitted.