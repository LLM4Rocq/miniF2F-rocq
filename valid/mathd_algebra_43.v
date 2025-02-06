Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_43
  (a b : R)
  (f : R -> R)
  (h0 : forall x, f x = a * x + b)
  (h1 : f 7 = 4)
  (h2 : f 6 = 3) :
  f 3 = 0.
Proof.
Admitted.