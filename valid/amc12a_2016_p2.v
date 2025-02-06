Require Import Coq.Arith.PeanoNat.

Theorem amc12a_2016_p2 :
  forall x : nat,
    10 ^ x * 100 ^ (2 * x) = 1000 ^ 5 ->
    x = 3.

Proof.
