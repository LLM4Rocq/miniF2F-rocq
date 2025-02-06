Require Import Coq.Reals.Reals.
Open Scope R_scope.


Parameter Rfloor : R -> Z.
Axiom Rfloor_spec : forall x : R,
  IZR (Rfloor x) <= x < IZR (Rfloor x) + 1.



Theorem amc12a_2016_p3:
  forall (f : R -> R -> R),
    (forall (x y : R), y <> 0 -> f x y = x - y * IZR (Rfloor (x / y))) ->
    f (3 / 8) (-(2 / 5)) = -(1 / 40).

Proof.
