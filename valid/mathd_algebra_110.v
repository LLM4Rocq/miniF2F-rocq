Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem mathd_algebra_110 :
  forall q e : C,
  q = 2 - 2 * Ci ->
  e = 5 + 5 * Ci ->
  q * e = 20.

Proof.
