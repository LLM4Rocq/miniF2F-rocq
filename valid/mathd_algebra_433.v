Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_433
  (f : R -> R)
  (h0 : forall x, f x = 3 * sqrt (2 * x - 7) - 8) :
  f 8 = 1.
Proof.
Admitted.