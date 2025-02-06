Require Import Reals.
Require Import Nat.
Require Import Coq.Init.Nat.

Theorem mathd_algebra_137 :
  forall x : nat,
  (IZR (Z_of_nat x) + (4/100) * IZR (Z_of_nat x))%R = 598%R ->
  x = 575.
Proof.
Admitted.
