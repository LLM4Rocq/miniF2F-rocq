Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Import List.ListNotations.



Theorem mathd_numbertheory_353 :
  forall (s : nat),
    s = fold_left plus (seq 2010 (4018 - 2010 + 1)) 0 ->
    s mod 2009 = 0.

Proof.
