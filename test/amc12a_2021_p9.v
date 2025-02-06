Require Import Coq.Arith.PeanoNat.
Require Import Coq.Lists.List.
Require Import Coq.Numbers.Natural.Abstract.NDiv.

Theorem amc12a_2021_p9 :
  fold_left Nat.mul 
    (map (fun k => (2^(2^k) + 3^(2^k))) (seq 0 7)) 1 = 
  3^128 - 2^128.
Proof.
Admitted.