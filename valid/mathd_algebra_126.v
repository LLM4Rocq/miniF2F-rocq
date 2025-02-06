Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_126 (x y : R) :
  2 * IZR(3) = x - IZR(9) ->
  2 * IZR(-5) = y + IZR(1) ->
  x = IZR(15) /\ y = IZR(-11).

Proof.
