Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_143 :
  forall (f g : R -> R),
  (forall x, f x = x + 1) ->
  (forall x, g x = x^2 + 3) ->
  f (g 2) = 8.
Proof.
Admitted.