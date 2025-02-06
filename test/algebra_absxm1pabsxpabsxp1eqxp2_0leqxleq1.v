Require Import Reals.
Open Scope R_scope.

Theorem algebra_absxm1pabsxpabsxp1eqxp2_0leqxleq1 :
  forall x : R,
  Rabs (x - 1) + Rabs x + Rabs (x + 1) = x + 2 ->
  0 <= x /\ x <= 1.
Proof.
Admitted.