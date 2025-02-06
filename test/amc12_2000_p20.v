Require Import Reals.
Open Scope R_scope.

Theorem amc12_2000_p20 :
  forall x y z : R,
    0 < x -> 0 < y -> 0 < z ->
    x + / y = 4 -> y + / z = 1 -> z + / x = 7 / 3 ->
    x * y * z = 1.
Proof.
Admitted.