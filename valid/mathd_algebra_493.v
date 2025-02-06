Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_493 (f : R -> R) (h0 : forall x, f x = x^2 - 4 * sqrt x + 1) : 
  f (f 4) = 70.
Proof.
Admitted.