Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_214 :
  forall (a : R) (f : R -> R),
  (forall x, f x = a * (x - 2)^2 + 3) ->
  f 4 = 4 ->
  f 6 = 7.
Proof.
Admitted.