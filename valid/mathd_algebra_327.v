Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_327 : forall a : R,
  (1 / 5 * Rabs (9 + 2 * a) < 1) ->
  -7 < a /\ a < -2.

Proof.
