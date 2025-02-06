Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_13:
  forall (A B : R),
  (forall x : R, (x - 3 <> 0) /\ (x - 5 <> 0) -> 
    4 * x / (x ^ 2 - 8 * x + 15) = A / (x - 3) + B / (x - 5)) ->
  A = -6 /\ B = 10.
Proof.
Admitted.