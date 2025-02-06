Require Import Nat.
Require Import Arith.

Theorem mathd_algebra_15
  (s : nat -> nat -> nat)
  (h0 : forall a b, 0 < a -> 0 < b -> s a b = a ^ b + b ^ a) :
  s 2 6 = 100.
Proof.
Admitted.