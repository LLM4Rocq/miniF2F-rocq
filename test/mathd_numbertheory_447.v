Require Import Coq.Lists.List.
Require Import Coq.Arith.PeanoNat.
Import ListNotations.



Theorem mathd_numbertheory_447 :
  fold_right plus 0
    (map (fun k => k mod 10)
         (filter (fun x => Nat.eqb (x mod 3) 0)
                 (seq 1 49))) = 78.

Proof.
