Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import Rdefinitions.
Require Import Rbasic_fun.
From Coq Require Import Reals.
From Coq Require Import Lia.
From Coq Require Import Lra.

Theorem imo_1969_p2 :
  forall (m n : R) (k : nat) (a : nat -> R) (y : R -> R),
    (0 < k)%nat ->
    (forall x : R, y x = sum_f_R0 (fun i => (cos (a i + x) / (2^i))) (pred k)) ->
    y m = 0 ->
    y n = 0 ->
    exists t : Z, m - n = (IZR t) * PI.

Proof.
