Require Import Reals.
Open Scope R_scope.

Theorem aime_1984_p5 :
  forall a b : R,
  (ln a) / (ln 8) + (ln (b * b)) / (ln 4) = 5 ->
  (ln b) / (ln 8) + (ln (a * a)) / (ln 4) = 7 ->
  a * b = 512.
Proof.
Admitted.