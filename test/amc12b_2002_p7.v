Require Import Arith.

Theorem amc12b_2002_p7 :
  forall a b c : nat,
  (0 < a) -> (0 < b) -> (0 < c) ->
  (b = a + 1) ->
  (c = b + 1) ->
  (a * b * c = 8 * (a + b + c)) ->
  (a^2 + b^2 + c^2 = 77).
Proof.
Admitted.