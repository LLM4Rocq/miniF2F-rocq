Require Import Coq.Arith.Arith.



Theorem mathd_numbertheory_277 :
  forall (m n : nat),
    Nat.gcd m n = 6 ->
    Nat.lcm m n = 126 ->
    60 <= m + n.

Proof.
