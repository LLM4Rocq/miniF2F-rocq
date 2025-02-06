Require Import ZArith.
Require Import Ring.
Require Import Znumtheory.

Theorem mathd_numbertheory_232 :
  forall x y z : Z,
  (x * 3) mod 31 = 1 ->
  (y * 5) mod 31 = 1 ->
  (z * (x + y)) mod 31 = 1 ->
  0 <= x < 31 ->
  0 <= y < 31 ->
  0 <= z < 31 ->
  z = 29.
Proof.
Admitted.