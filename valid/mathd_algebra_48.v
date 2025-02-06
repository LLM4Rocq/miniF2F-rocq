Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem mathd_algebra_48 :
  forall (q e : C),
  q = 9 - 4 * Ci -> 
  e = -3 - 4 * Ci ->
  q - e = 12.

Proof.
