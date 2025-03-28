Require Import Arith.

Theorem mathd_algebra_125 :
  forall x y : nat,
  0 < x -> 0 < y ->
  5 * x = y ->
  (x - 3) + (y - 3) = 30 ->
  x = 6.
Proof.
Admitted.
