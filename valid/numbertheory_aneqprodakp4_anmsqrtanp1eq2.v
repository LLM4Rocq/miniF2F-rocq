Require Import Reals.
Require Import List.
Require Import Lia.

From Coquelicot Require Import Coquelicot.

Theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2:
  forall (a : nat -> R),
  (a 0%nat = 1%R) ->
  (forall n : nat, a (S n) = (prod_f_R0 a n) + 4%R) ->
  forall n : nat,
  (n >= 1)%nat ->
  a n - sqrt (a (S n)) = 2%R.

Proof.
