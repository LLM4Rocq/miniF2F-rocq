Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2003_p6 :
  forall (a r : R) (u : nat -> R),
  (forall k : nat, u k = a * pow r k) ->
  u 1%nat = 2 ->
  u 3%nat = 6 ->
  u 0%nat = 2/sqrt(3) \/ u 0%nat = -(2/sqrt(3)).

Proof.
