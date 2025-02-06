Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2003_p17:
  forall x y : R,
  0 < x -> 0 < y ->
  ln (x * y ^ 3) = 1 ->
  ln (x ^ 2 * y) = 1 ->
  ln (x * y) = 3 / 5.
Proof.
Admitted.