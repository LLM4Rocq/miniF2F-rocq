Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2009_p7 (x : R) (n : nat) (a : nat -> R) :
  (forall m : nat, a (S m) - a m = a (S (S m)) - a (S m)) ->
  (a 1%nat = 2 * x - 3) ->
  (a 2%nat = 5 * x - 11) ->
  (a 3%nat = 3 * x + 1) ->
  (a n = 2009) ->
  n = 502%nat.

Proof.
