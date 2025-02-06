From Coq Require Import Arith List.
Import List.ListNotations.



Theorem mathd_numbertheory_239 :
  Nat.modulo (fold_left plus (seq 1 12) 0) 4 = 2.

Proof.
