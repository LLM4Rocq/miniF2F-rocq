Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2009_p5 :
  forall x : R,
  (x^3 - (x + 1) * (x - 1) * x = 5) -> 
  x^3 = 125.
Proof.
Admitted.