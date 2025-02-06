Require Import Reals.
Open Scope R_scope.

Theorem imo_1973_p3 :
  forall (a b : R),
  (exists x : R, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0) ->
  4/5 <= a^2 + b^2.
Proof.
Admitted.