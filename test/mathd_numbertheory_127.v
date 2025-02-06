Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Import ListNotations.



Theorem mathd_numbertheory_127 :
  (fold_left (fun acc k => acc + 2 ^ k) (seq 0 101) 0) mod 7 = 3.

Proof.
