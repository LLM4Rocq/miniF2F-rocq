Require Import Coq.Reals.Reals.
Open Scope R_scope.


Fixpoint sum_n (a : nat -> R) (n : nat) : R :=
  match n with
  | 0 => 0
  | S p => sum_n a p + a p
  end.


Fixpoint prod_n (a : nat -> R) (n : nat) : R :=
  match n with
  | 0 => 1
  | S p => prod_n a p * a p
  end.


Theorem algebra_amgm_sum1toneqn_prod1tonleq1:
  forall (n : nat) (a : nat -> R),
    (forall i, (i < n)%nat -> 0 <= a i) ->
    sum_n a n = INR n ->
    prod_n a n <= 1.

Proof.
