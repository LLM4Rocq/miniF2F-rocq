Require Import Reals.
Open Scope R_scope.

Theorem amc12b_2003_p9 :
  forall (a b : R) (f : R -> R),
  (forall x : R, f x = a * x + b) ->
  f 6 - f 2 = 12 ->
  f 12 - f 2 = 30.
Proof.
Admitted.