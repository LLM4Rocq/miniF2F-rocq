Require Import ZArith.
Require Import Nat.
Require Import Lia.

Theorem amc12a_2021_p3:
  forall (x y : nat),
  x + y = 17402 ->
  (exists k, x = 10 * k)%nat ->
  (x / 10 = y)%nat ->
  (Z.of_nat x - Z.of_nat y = 14238)%Z.

Proof.
