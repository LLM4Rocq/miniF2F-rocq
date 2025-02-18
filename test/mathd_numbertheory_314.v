Require Import Nat.
Require Import Arith.

Theorem mathd_numbertheory_314 :
  forall (r n : nat),
  r = 1342 mod 13 ->
  0 < n ->
  Nat.divide 1342 n ->
  n mod 13 < r ->
  6710 <= n.
Proof.
