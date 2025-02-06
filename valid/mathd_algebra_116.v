Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_116 :
  forall (k x : R),
  x = (13 - sqrt 131) / 4 ->
  2 * x^2 - 13 * x + k = 0 ->
  k = 19/4.
Proof.
Admitted.