Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_452 :
  forall (a : nat -> R),
  (forall n : nat, a (S (S n)) - a (S n) = a (S n) - a n) ->
  a (1%nat) = 2/3 ->
  a (9%nat) = 4/5 ->
  a (5%nat) = 11/15.

Proof.
