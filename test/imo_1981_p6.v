Require Import PeanoNat.

Theorem imo_1981_p6
  (f : nat -> nat -> nat)
  (h0 : forall y, f 0 y = y + 1)
  (h1 : forall x, f (S x) 0 = f x 1)
  (h2 : forall x y, f (S x) (S y) = f x (f (S x) y)) :
  forall y, f 4 (S y) = 2^(f 4 y + 3) - 3.
Proof.
Admitted.