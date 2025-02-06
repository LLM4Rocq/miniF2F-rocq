Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_140 :
  forall a b c : R,
  (0 < a) -> (0 < b) -> (0 < c) ->
  (forall x : R, 24 * x^2 - 19 * x - 35 = (a * x - 5) * (2 * (b * x) + c)) ->
  a * b - 3 * c = -9.
Proof.
Admitted.