Require Import Nat.
Require Import List.
Require Import Arith.
Require Import List.
Import ListNotations.


Definition get_divisors (n : nat) :=
  filter (fun k => Nat.eqb (n mod k) 0) (seq 1 (S n)).


Definition sum_list := fold_right plus 0.


Definition is_prime (p : nat) :=
  match p with
  | 0 | 1 => false
  | n => forallb (fun d => negb (Nat.eqb (n mod d) 0)) (seq 2 (pred n))
  end.

Theorem mathd_numbertheory_427 :
  forall (a : nat),
  a = sum_list (get_divisors 500) ->
  sum_list (filter (fun k => andb (is_prime k) (Nat.eqb (a mod k) 0)) (seq 1 (S a))) = 25.

Proof.
