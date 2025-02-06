Require Import Reals.
Open Scope R_scope.

Theorem algebra_9onxpypzleqsum2onxpy:
  forall x y z : R,
  (0 < x) -> (0 < y) -> (0 < z) ->
  (9 / (x + y + z) <= 2 / (x + y) + 2 / (y + z) + 2 / (z + x)).
Proof.
Admitted.