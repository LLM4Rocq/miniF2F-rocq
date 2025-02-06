Require Import Nat.
Require Import List.
Import ListNotations.

Theorem mathd_numbertheory_257 :
  forall x : nat,
  (1 <= x /\ x <= 100) ->
  (exists k, k * 77 = fold_right plus 0 (seq 0 101) - x) ->
  x = 45.

Proof.
