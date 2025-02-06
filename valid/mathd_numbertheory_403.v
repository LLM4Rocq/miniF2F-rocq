Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Import ListNotations.

Open Scope nat_scope.


Definition dividesb (d n : nat) : bool :=
  (n mod d) =? 0.



Theorem mathd_numbertheory_403 :
  fold_right plus 0
    (filter (fun x => andb (dividesb x 198) (negb (x =? 198))) (seq 1 198))
  = 270.

Proof.
