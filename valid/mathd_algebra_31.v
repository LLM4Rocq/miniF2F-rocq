Require Import Reals.
Require Import Lra.
Require Import Coquelicot.Coquelicot.

Theorem mathd_algebra_31 :
  forall (x : R) (u : nat -> R),
  (forall n : nat, u (S n) = sqrt (x + u n)) ->
  filterlim u eventually (locally 9) ->
  9 = sqrt (x + 9).

Proof.
