Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2021_p3:
  forall x : R,
  2 + 1 / (1 + 1 / (2 + 2 / (3 + x))) = 144 / 53 -> 
  x = 3 / 4.
Proof.
Admitted.