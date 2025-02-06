Require Import Nat.
Require Import Arith.

Theorem numbertheory_2dvd4expn :
  forall n : nat,
  n <> 0 ->
  Nat.divide 2 (4^n).

Proof.
