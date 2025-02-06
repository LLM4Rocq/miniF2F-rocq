Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_314 :
  forall (r n : nat),
  r = 1342 mod 13 ->
  0 < n ->
  (exists k, n = k * 1342) ->
  n mod 13 < r ->
  6710 <= n.

Proof.
