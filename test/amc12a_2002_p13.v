Require Import Reals.
Require Import Psatz.

Open Scope R_scope.

Theorem amc12a_2002_p13 :
  forall a b : R,
    0 < a -> 0 < b ->
    a <> b ->
    Rabs (a - 1/a) = 1 ->
    Rabs (b - 1/b) = 1 ->
    a + b = sqrt 5.
Proof.
Admitted.