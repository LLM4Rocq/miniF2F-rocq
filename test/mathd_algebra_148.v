Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_148 :
  forall (c : R) (f : R -> R),
  (forall x, f x = c * x^3 - 9 * x + 3) ->
  f 2 = 9 ->
  c = 3.
Proof.
Admitted.