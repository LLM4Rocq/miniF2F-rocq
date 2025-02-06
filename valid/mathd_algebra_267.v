Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_267:
  forall (x : R),
  x <> 1 -> x <> -2 -> (x + 1) / (x - 1) = (x - 2) / (x + 2) -> x = 0.
Proof.
Admitted.