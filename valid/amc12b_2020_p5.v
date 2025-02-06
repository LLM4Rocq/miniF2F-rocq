Require Import Reals.
Require Import Nat.

Theorem amc12b_2020_p5 :
  forall (a b : nat),
  (5/8 * (INR b) = 2/3 * (INR a) + 7)%R ->
  ((INR b) - 5/8 * (INR b) = (INR a) - 2/3 * (INR a) + 7)%R ->
  a = 42.
Proof.
Admitted.