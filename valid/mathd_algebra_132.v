Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_132 :
  forall (x : R) (f g : R -> R),
  (forall x, f x = x + 2) ->
  (forall x, g x = x^2) ->
  (f (g x) = g (f x)) ->
  x = -1 / 2.
Proof.
Admitted.