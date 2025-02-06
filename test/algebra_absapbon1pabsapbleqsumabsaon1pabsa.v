Require Import Reals.
Open Scope R_scope.

Theorem algebra_absapbon1pabsapbleqsumabsaon1pabsa :
  forall (a b : R),
  Rabs (a + b) / (1 + Rabs (a + b)) <= Rabs a / (1 + Rabs a) + Rabs b / (1 + Rabs b).
Proof.
Admitted.