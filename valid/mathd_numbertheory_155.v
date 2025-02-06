Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Import ListNotations.



Theorem mathd_numbertheory_155 :
  length (filter (fun x => Nat.eqb (x mod 19) 7)
                 (seq 100 (999 - 100 + 1))) = 48.

Proof.
