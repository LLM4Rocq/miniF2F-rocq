Require Import Arith.
Require Import PeanoNat.

Theorem imo_1997_p5:
  forall x y : nat,
  0 < x -> 0 < y ->
  x^(y^2) = y^x ->
  (x, y) = (1, 1) \/ (x, y) = (16, 2) \/ (x, y) = (27, 3).
Proof.
Admitted.