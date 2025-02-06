Require Import Coq.Reals.Reals.

Open Scope R_scope.


Definition logb (a x : R) : R := ln x / ln a.

Theorem aime_1988_p3 :
  forall (x : R),
    0 < x ->
    logb 2 (logb 8 x) = logb 8 (logb 2 x) ->
    (logb 2 x)^2 = 27.

Proof.
