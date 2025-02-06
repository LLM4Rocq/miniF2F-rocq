Require Import Reals.
Open Scope R_scope.

Theorem algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3:
  forall a b c : R,
  (a <= b /\ b <= c) ->
  (a + b + c = 2) ->
  (a * b + b * c + c * a = 1) ->
  (0 <= a /\ a <= (1 / 3) /\ (1 / 3) <= b /\ b <= 1 /\ 1 <= c /\ c <= (4 / 3)).
Proof.
Admitted.