Require Import Reals.
Require Import QArith.
Require Import Znumtheory.
From Stdlib Require Import Qreals.

Theorem amc12a_2021_p18
  (f : Q -> R)
  (hcompat : forall x y : Q, Qeq x y -> f x = f y)
  (h0 : forall x y : Q, (0 < x)%Q -> (0 < y)%Q -> f (Qmult x y) = Rplus (f x) (f y))
  (h1 : forall p : Z, prime p -> f (inject_Z p) = IZR p) :
  (f (Qmake 25 11) < 0)%R.

Proof.
Admitted.
