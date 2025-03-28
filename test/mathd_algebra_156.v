Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_156 (x y : R) (f g : R -> R) :
  (forall t, f t = t^4) ->
  (forall t, g t = 5 * t^2 - 6) ->
  f x = g x ->
  f y = g y ->
  x^2 < y^2 ->
  y^2 - x^2 = 1.
Proof.
Admitted.
