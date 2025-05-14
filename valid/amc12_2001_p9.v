Require Export Reals Lra.
Open Scope R_scope.

Theorem amc12_2001_p9 (f : R -> R) :
  (forall x y : R, 0 < x -> 0 < y -> f (x * y) = f x / y) ->
  f 500 = 3 ->
  f 600 = 5 / 2.
Proof.
Admitted.
