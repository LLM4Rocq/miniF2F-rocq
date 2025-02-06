Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_33 :
  forall (x y z : R),
  x <> 0 ->
  2 * x = 5 * y ->
  7 * y = 10 * z ->
  z / x = 7 / 25.
Proof.
Admitted.