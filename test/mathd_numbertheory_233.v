Require Import ZArith.
Require Import Znumtheory.

Theorem mathd_numbertheory_233:
  forall b : Z,
  0 <= b < 11 * 11 ->
  (b * 24) mod (11 * 11) = 1 ->
  b = 116.
Proof.
Admitted.