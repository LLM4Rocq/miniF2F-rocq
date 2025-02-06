Require Import Reals.
Open Scope R_scope.

Theorem algebra_sqineq_unitcircatbpabsamblt1:
  forall (a b : R), (a^2 + b^2 = 1) -> (a * b + Rabs (a - b) <= 1).
Proof.
Admitted.