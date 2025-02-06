Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2009_p25 :
  forall (a : nat -> R),
    (a 1%nat = 1) ->
    (a 2%nat = 1/sqrt 3) ->
    (forall n : nat, (1 <= n)%nat -> 
      a (S (S n))%nat = (a n + a (S n))/(1 - a n * a (S n))) ->
    Rabs (a 2009%nat) = 0.

Proof.
