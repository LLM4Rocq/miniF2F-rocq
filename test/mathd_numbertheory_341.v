Require Import Nat.

Theorem mathd_numbertheory_341 :
  forall a b c : nat,
  (a <= 9) -> (b <= 9) -> (c <= 9) ->
  (5^100 mod 1000 = 100*a + 10*b + c) ->
  a + b + c = 13.
Proof.
Admitted.