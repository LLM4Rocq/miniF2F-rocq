Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_270
  (f : R -> R)
  (h₀ : forall x : R, x <> -2 -> f x = 1 / (x + 2)) :
  f (f 1) = 3 / 7.
Proof.
Admitted.
