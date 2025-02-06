Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2008_p8 :
  forall (x y : R),
  (0 < x) /\ (0 < y) -> 
  y^3 = 1 ->
  6 * x^2 = 2 * (6 * y^2) ->
  x^3 = 2 * sqrt 2.
Proof.
Admitted.