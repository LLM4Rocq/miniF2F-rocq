Require Import Arith.
Require Import Nat.

Theorem mathd_numbertheory_370:
  forall n : nat, 
    (n mod 7 = 3) -> 
    (2 * n + 1) mod 7 = 0.
Proof.
Admitted.