Require Import Coq.Reals.Reals.
Require Import Coq.Reals.R_Ifp.
Open Scope R_scope.

Theorem amc12a_2016_p3:
  forall (f : R -> R -> R),
    (forall (x y : R), y <> 0 -> f x y = x - y * IZR (Int_part (x / y))) ->
    f (3 / 8) (-(2 / 5)) = -(1 / 40).

Proof.
