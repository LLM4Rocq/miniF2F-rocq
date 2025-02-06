Require Import PeanoNat.

Theorem aime_1991_p1 :
  forall (x y : nat),
    (0 < x)%nat -> (0 < y)%nat ->
    (x * y + x + y = 71) ->
    (x^2 * y + x * y^2 = 880) ->
    (x^2 + y^2 = 146).
Proof.
Admitted.