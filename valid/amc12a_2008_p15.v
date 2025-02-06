Require Import Coq.Arith.Arith.
Require Import Coq.ZArith.ZArith.

Theorem amc12a_2008_p15 :
  forall k : nat,
  k = 2008^2 + 2^2008 ->
  (k^2 + 2^k) mod 10 = 6.
Proof.
Admitted.