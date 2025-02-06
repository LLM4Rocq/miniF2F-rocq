Require Import Reals.
Open Scope R_scope.

Theorem aime_1989_p8 :
  forall a b c d e f g : R,
    a + 4 * b + 9 * c + 16 * d + 25 * e + 36 * f + 49 * g = 1 ->
    4 * a + 9 * b + 16 * c + 25 * d + 36 * e + 49 * f + 64 * g = 12 ->
    9 * a + 16 * b + 25 * c + 36 * d + 49 * e + 64 * f + 81 * g = 123 ->
    16 * a + 25 * b + 36 * c + 49 * d + 64 * e + 81 * f + 100 * g = 334.
Proof.
Admitted.