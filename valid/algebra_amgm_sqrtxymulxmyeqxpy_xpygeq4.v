Require Import Reals.
Open Scope R_scope.

Theorem algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4 :
  forall x y : R,
  (0 < x /\ 0 < y) ->
  y <= x ->
  sqrt (x * y) * (x - y) = (x + y) ->
  x + y >= 4.
Proof.
Admitted.