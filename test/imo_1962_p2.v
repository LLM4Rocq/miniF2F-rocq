Require Import Reals.
Open Scope R_scope.

Theorem imo_1962_p2 :
  forall x : R,
  0 <= 3 - x ->
  0 <= x + 1 ->
  1/2 < sqrt (sqrt (3 - x) - sqrt (x + 1)) ->
  -1 <= x /\ x < 1 - sqrt 127 / 32.

Proof.
