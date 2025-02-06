Require Import Arith.

Theorem mathd_numbertheory_222:
  forall b : nat,
    Nat.lcm 120 b = 3720 ->
    Nat.gcd 120 b = 8 ->
    b = 248.
Proof.
Admitted.