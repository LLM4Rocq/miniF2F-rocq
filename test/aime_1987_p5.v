Require Import ZArith.
Open Scope Z_scope.

Theorem aime_1987_p5:
  forall (x y : Z), 
  (y ^ 2 + 3 * (x ^ 2 * y ^ 2) = 30 * x ^ 2 + 517) ->
  3 * (x ^ 2 * y ^ 2) = 588.
Proof.
Admitted.