Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_28 :
  forall (c : R) (f : R -> R),
    (forall x, f x = 2 * x^2 + 5 * x + c) ->
    (exists x, f x <= 0) ->
    c <= 25 / 8.
Proof.
Admitted.