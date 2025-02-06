Require Import PeanoNat.

Theorem mathd_numbertheory_559:
  forall x y : nat,
  (x mod 3 = 2) ->
  (y mod 5 = 4) ->
  (x mod 10 = y mod 10) ->
  (14 <= x).
Proof.
Admitted.