Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2002_p6 :
  forall a b : R,
  (a <> 0) /\ (b <> 0) ->
  (forall x, x^2 + a * x + b = (x - a) * (x - b)) ->
  a = 1 /\ b = -2.
Proof.
Admitted.