Require Import Reals.
Open Scope R_scope.

Theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : R)
  (h₀ : 0 < a /\ 0 < b /\ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 >= b / a + c / b + a / c.
Proof.
Admitted.