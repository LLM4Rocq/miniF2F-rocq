Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_11:
  forall (a b : R),
    a <> b ->
    a <> 2 * b ->
    (4 * a + 3 * b) / (a - 2 * b) = 5 ->
    (a + 11 * b) / (a - b) = 2.
Proof.
Admitted.