Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2021_p22:
  forall (a b c : R) (f : R -> R),
  (forall x : R, f x = x^3 + a*x^2 + b*x + c) ->
  (forall x : R, f x = 0 <-> 
    x = cos((2*PI)/7) \/ x = cos((4*PI)/7) \/ x = cos((6*PI)/7)) ->
  a * b * c = 1/32.
Proof.
Admitted.