Require Import Arith.
Require Import PeanoNat.

Theorem imo_1977_p6 (f : nat -> nat)
  (h₀ : forall n, 0 < f n)
  (h₁ : forall n, 0 < n -> f (f n) < f (S n)) :
  forall n, 0 < n -> f n = n.
Proof.
Admitted.