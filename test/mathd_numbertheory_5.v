Require Import PeanoNat.

Theorem mathd_numbertheory_5:
  forall n : nat,
  10 <= n ->
  (exists x, x^2 = n) ->
  (exists t, t^3 = n) ->
  64 <= n.
Proof.
Admitted.