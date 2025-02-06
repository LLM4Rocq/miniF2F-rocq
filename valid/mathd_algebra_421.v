Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_421 :
  forall (a b c d : R),
  b = a^2 + 4 * a + 6 ->
  b = (1 / 2) * a^2 + a + 6 ->
  d = c^2 + 4 * c + 6 ->
  d = (1 / 2) * c^2 + c + 6 ->
  a < c ->
  c - a = 6.
Proof.
Admitted.