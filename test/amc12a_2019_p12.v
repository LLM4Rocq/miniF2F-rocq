Require Import Reals.
Require Import Psatz.

Open Scope R_scope.

Theorem amc12a_2019_p12:
  forall (x y : R),
  0 < x -> 0 < y ->
  (x <> 1) /\ (y <> 1) ->
  (ln x / ln 2 = ln 16 / ln y) ->
  (x * y = 64) ->
  (ln (x / y) / ln 2)^2 = 20.
Proof.
Admitted.
