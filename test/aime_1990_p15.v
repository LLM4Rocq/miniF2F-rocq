Require Import Reals.
Open Scope R_scope.

Theorem aime_1990_p15 :
  forall (a b x y : R),
  (a * x + b * y = 3) ->
  (a * x^2 + b * y^2 = 7) ->
  (a * x^3 + b * y^3 = 16) ->
  (a * x^4 + b * y^4 = 42) ->
  (a * x^5 + b * y^5 = 20).
Proof.
Admitted.