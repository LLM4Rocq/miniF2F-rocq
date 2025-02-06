Require Import Coq.Init.Nat.
Require Import Coq.Lists.List.
Import ListNotations.


Definition divides (d n : nat) : bool :=
  Nat.eqb (n mod d) 0.


Definition divisors (n : nat) : list nat :=
  filter (fun d => divides d n) (seq 1 n).


Fixpoint sum_list (l : list nat) : nat :=
  match l with
  | [] => 0
  | x :: xs => x + sum_list xs
  end.


Theorem mathd_numbertheory_32 : sum_list (divisors 36) = 91.

Proof.
