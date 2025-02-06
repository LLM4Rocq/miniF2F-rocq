Require Import Reals.
Open Scope R_scope.

Theorem aime_1983_p9 :
  forall (x : R), 0 < x -> x < PI ->
  12 <= (9 * (x^2 * sin x^2) + 4) / (x * sin x).
Proof.
Admitted.
