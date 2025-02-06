Require Import Coq.Init.Nat.



Theorem mathd_numbertheory_64 :
  (30 * 39) mod 47 = 42 /\
  (forall x, (30 * x) mod 47 = 42 -> 39 <= x).

Proof.
