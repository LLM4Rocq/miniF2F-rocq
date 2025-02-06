Require Import Reals.
Open Scope R_scope.

Theorem amc12a_2010_p11 :
  forall (x b : R),
    0 < b ->
    Rpower 7 (x + 7) = Rpower 8 x ->
    x = (ln (Rpower 7 7) / ln b) ->
    b = 8/7.

Proof.
