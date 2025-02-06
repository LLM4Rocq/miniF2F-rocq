Require Import Nat.
Require Import PeanoNat.
Require Import Arith.

Theorem mathd_numbertheory_711:
  forall m n : nat,
  0 < m /\ 0 < n ->
  Nat.gcd m n = 8 ->
  Nat.lcm m n = 112 ->
  72 <= m + n.
Proof.
Admitted.