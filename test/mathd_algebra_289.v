Require Import ZArith.
Require Import Nat.

Definition is_prime (p: nat) := 
  p > 1 /\ forall m : nat, m > 0 /\ m < p -> p mod m <> 0 \/ m = 1.

Theorem mathd_algebra_289:
  forall (k t m n : nat),
    is_prime m -> is_prime n ->
    t < k ->
    (Z.of_nat (k * k) - Z.of_nat (m * k) + Z.of_nat n)%Z = 0%Z ->
    (Z.of_nat (t * t) - Z.of_nat (m * t) + Z.of_nat n)%Z = 0%Z ->
    m ^ n + n ^ m + k ^ t + t ^ k = 20.

Proof.
