Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import Reals.Rfunctions.
Require Import QArith.QArith_base.
Require Import Coq.Reals.Rbasic_fun.
Open Scope R_scope.

Definition is_rational (x : R) := 
  exists (p q : Z), (q <> 0%Z) /\ x = (IZR p / IZR q)%R.

Theorem mathd_algebra_282
  (f : R -> R)
  (h0 : forall x, is_rational x -> f x = Rabs (IZR (Int_part x)))
  (h1 : forall x, ~is_rational x -> f x = Rpower (IZR (up x)) 2) :
  f (Rpower 8 (1/3)) + f (-PI) + f (sqrt 50) + f (9/2) = 79.

Proof.
