Require Import Reals.
Require Import ZArith.

Open Scope R_scope.

Theorem mathd_algebra_276 :
  forall (a b : Z),
  (forall x : R, 10 * x^2 - x - 24 = (IZR a * x - 8) * (IZR b * x + 3)) ->
  Z.add (Z.mul a b) b = 12%Z.

Proof.
