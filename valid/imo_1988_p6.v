Require Import Reals.
Require Import Nat.
Require Import ZArith.

Theorem imo_1988_p6 :
  forall (a b : nat),
  0 < a -> 0 < b ->
  (Nat.divide (a * b + 1) (a * a + b * b)) ->
  exists x : nat, 
    (INR x * INR x)%R = (INR (a * a + b * b) / INR (a * b + 1))%R.

Proof.
