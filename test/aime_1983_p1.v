Require Import Coq.Reals.Reals.

Open Scope R_scope.

Theorem aime_1983_p1 :
  forall (x y z w : R),
    1 < x ->
    1 < y ->
    1 < z ->
    0 < w ->
    ln w / ln x = 24 ->
    ln w / ln y = 40 ->
    ln w / ln (x * y * z) = 12 ->
    ln w / ln z = 60.

Proof.
Admitted.
