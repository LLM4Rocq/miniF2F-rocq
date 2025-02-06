Require Import Reals.
Open Scope R_scope.

Theorem amc12_2000_p5:
  forall (x p : R),
  x < 2 ->
  Rabs (x - 2) = p ->
  x - p = 2 - 2 * p.
Proof.
Admitted.