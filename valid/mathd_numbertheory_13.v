Require Import Reals.
Require Import ZArith.
Require Import Lia.

Theorem mathd_numbertheory_13 :
  forall u v : nat,
  u > 0 -> v > 0 ->
  (14 * u) mod 100 = 46 ->
  (14 * v) mod 100 = 46 ->
  u < 50 ->
  50 < v ->
  v < 100 ->
  (u + v)%nat / 2 = 64.
Proof.
Admitted.