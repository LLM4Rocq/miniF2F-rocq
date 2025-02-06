Require Import Reals.
Require Import Coquelicot.Coquelicot.
Open Scope R_scope.

Theorem mathd_algebra_114 (a : R)
  (H : a = 8) :
  Rpower (16 * Rpower (a ^ 2) (1/3)) (1/3) = 4.

Proof.
