Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2011_p18:
  forall (x y : R),
  Rabs (x + y) + Rabs (x - y) = 2 ->
  x^2 - 6 * x + y^2 <= 8.
Proof.
Admitted.