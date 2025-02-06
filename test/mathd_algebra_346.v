Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_346 :
  forall f g : R -> R,
  (forall x, f x = 2 * x - 3) ->
  (forall x, g x = x + 1) ->
  g (f 5 - 1) = 7.
Proof.
Admitted.