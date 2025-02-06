Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_139 : 
  forall s : R -> R -> R,
  (forall x y : R, x <> 0 -> y <> 0 -> s x y = (1/y - 1/x)/(x - y)) ->
  s 3 11 = 1/33.
Proof.
Admitted.