Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_101:
  forall x : R, (x^2 - 5 * x - 4 <= 10) -> (x >= -2) /\ (x <= 7).
Proof.
Admitted.