Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem amc12a_2010_p10:
  forall (p q : R) (a : nat -> R),
    (forall n, a (n + 2)%nat - a (n + 1)%nat = a (n + 1)%nat - a n) ->
    a 1%nat = p ->
    a 2%nat = 9 ->
    a 3%nat = 3 * p - q ->
    a 4%nat = 3 * p + q ->
    a 2010%nat = 8041.

Proof.
