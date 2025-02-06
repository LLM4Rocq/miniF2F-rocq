Require Import Arith.
Require Import Nat.

Theorem mathd_numbertheory_629:
  (exists t : nat,
    t > 0 /\ (Nat.lcm 12 t)^3 = (12 * t)^2) /\
  (forall x : nat,
    x > 0 /\ (Nat.lcm 12 x)^3 = (12 * x)^2 -> x >= 18).
Proof.
Admitted.