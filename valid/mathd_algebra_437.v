Require Import Reals.
Require Import ZArith.
Open Scope R_scope.

Theorem mathd_algebra_437 :
  forall (x y : R) (n : Z),
    x^3 = -45 ->
    y^3 = -101 ->
    x < IZR n ->
    IZR n < y ->
    n = (-4)%Z.

Proof.
