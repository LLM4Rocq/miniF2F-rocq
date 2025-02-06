Require Import Coq.Arith.PeanoNat.
Require Import Coq.Init.Nat.
Require Import Coq.ZArith.Znat.
Open Scope nat_scope.

Theorem mathd_numbertheory_100:
  forall n : nat,
  0 < n ->
  Nat.gcd n 40 = 10 ->
  Nat.lcm n 40 = 280 ->
  n = 70.
Proof.
Admitted.