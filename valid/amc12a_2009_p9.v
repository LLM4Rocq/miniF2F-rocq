Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2009_p9 :
  forall (a b c : R) (f : R -> R),
    (forall x, f (x + 3) = 3 * x^2 + 7 * x + 4) ->
    (forall x, f x = a * x^2 + b * x + c) ->
    a + b + c = 2.
Proof.
Admitted.