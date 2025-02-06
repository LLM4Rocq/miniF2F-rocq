Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_338 :
  forall a b c : R,
    (3 * a + b + c = -3) ->
    (a + 3 * b + c = 9) ->
    (a + b + 3 * c = 19) ->
    a * b * c = -56.
Proof.
Admitted.