Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_159:
  forall (b : R) (f : R -> R),
    (forall x, f x = 3 * (x^4) - 7 * (x^3) + 2 * (x^2) - b * x + 1) ->
    f 1 = 1 ->
    b = -2.
Proof.
Admitted.