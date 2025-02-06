Require Import Reals.Reals.
Require Import QArith.QArith.
Require Import QArith.Qreals.

Theorem algebra_apbmpcneq0_aeq0anbeq0anceq0:
  forall (a b c: Q) (m n: R),
    (0 < m /\ 0 < n)%R ->
    (Rpower m 3 = 2)%R ->
    (Rpower n 3 = 4)%R ->
    (Q2R a + Q2R b * m + Q2R c * n = 0)%R ->
    a = 0%Q /\ b = 0%Q /\ c = 0%Q.

Proof.
