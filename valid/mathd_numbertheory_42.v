Require Import PeanoNat.
Require Import Arith.

Theorem mathd_numbertheory_42 :
  forall u v : nat,
  (27 * u mod 40 = 17) ->
  (27 * v mod 40 = 17) ->
  (u < 40) ->
  (v < 80) ->
  (40 < v) ->
  (u + v = 62).
Proof.
Admitted.