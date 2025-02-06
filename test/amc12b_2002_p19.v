Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2002_p19 :
  forall (a b c : R),
    0 < a -> 0 < b -> 0 < c ->
    a * (b + c) = 152 -> 
    b * (c + a) = 162 ->
    c * (a + b) = 170 ->
    a * b * c = 720.
Proof.
Admitted.