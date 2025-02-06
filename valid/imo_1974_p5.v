Require Import Reals.
Open Scope R_scope.

Theorem imo_1974_p5 :
  forall (a b c d s : R),
  (0 < a) -> (0 < b) -> (0 < c) -> (0 < d) ->
  (s = a / (a + b + d) + b / (a + b + c) + c / (b + c + d) + d / (a + c + d)) ->
  (1 < s) /\ (s < 2).
Proof.
Admitted.