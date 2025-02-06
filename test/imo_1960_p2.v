Require Import Reals.
Open Scope R_scope.

Theorem imo_1960_p2 :
  forall (x : R),
  (0 <= 1 + 2 * x) ->
  (1 - sqrt (1 + 2 * x))^2 <> 0 ->
  (4 * x^2) / (1 - sqrt (1 + 2 * x))^2 < 2 * x + 9 ->
  - (1 / 2) <= x /\ x < 45 / 8.
Proof.
Admitted.