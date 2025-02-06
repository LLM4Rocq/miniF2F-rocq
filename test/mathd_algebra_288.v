Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_288:
  forall (x y n : R),
  x < 0 /\ y < 0 ->
  Rabs y = 6 ->
  sqrt ((x - 8)^2 + (y - 3)^2) = 15 ->
  sqrt (x^2 + y^2) = sqrt n ->
  n = 52.
Proof.
Admitted.