Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_245 :
  forall x : R,
  x <> 0 ->
  (/ (4 / x)) * (((3 * x^3) / x)^2) * ((/ (1 / (2 * x)))^3) = 18 * x^8.

Proof.
