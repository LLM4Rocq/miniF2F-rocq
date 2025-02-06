Require Import Reals.
Open Scope R_scope.


Definition realpow (x y : R) : R := exp (y * ln x).

Theorem mathd_algebra_598:
  forall (a b c d : R),
    realpow 4 a = 5 ->
    realpow 5 b = 6 ->
    realpow 6 c = 7 ->
    realpow 7 d = 8 ->
    a * b * c * d = 3 / 2.

Proof.
