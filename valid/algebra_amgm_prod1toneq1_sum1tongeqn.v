
Require Import Reals.
Require Import List.
Import ListNotations.
Open Scope R_scope.


Definition Rsum (n : nat) (a : nat -> R) :=
  fold_right Rplus 0 (map a (seq 0 n)).

Definition Rprod (n : nat) (a : nat -> R) :=
  fold_right Rmult 1 (map a (seq 0 n)).


Theorem algebra_amgm_prod1toneq1_sum1tongeqn :
  forall (a : nat -> R) (n : nat),
    (forall i, 0 <= a i) ->
    Rprod n a = 1 ->
    Rsum n a >= INR n.

Proof.
