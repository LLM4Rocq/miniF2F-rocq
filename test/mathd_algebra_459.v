Require Import QArith.
Require Import ZArith.

Theorem mathd_algebra_459 :
  forall (a b c d : Q),
    3 * a = b + c + d ->
    4 * b = a + c + d ->
    2 * c = a + b + d ->
    8 * a + 10 * b + 6 * c = 24 ->
    (Qnum d + Z.pos (Qden d))%Z = 28%Z.

Proof.
