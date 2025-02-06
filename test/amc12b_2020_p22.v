Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem amc12b_2020_p22 : forall t : R,
  ((exp (t * ln 2) - 3 * t) * t) / (exp (t * ln 4)) <= 1 / 12.

Proof.
