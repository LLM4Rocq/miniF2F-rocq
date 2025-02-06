Require Import Reals.
Open Scope R_scope.

Theorem algebra_amgm_sumasqdivbgeqsuma :
  forall a b c d : R,
  0 < a /\ 0 < b /\ 0 < c /\ 0 < d ->
  a^2 / b + b^2 / c + c^2 / d + d^2 / a >= a + b + c + d.
Proof.
Admitted.