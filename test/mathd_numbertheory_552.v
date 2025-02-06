Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Require Import Coq.Init.Nat.
Require Import Coq.Bool.Bool.

Import ListNotations.

Theorem mathd_numbertheory_552 :
  forall (f g h : nat -> nat),
    (forall x, x > 0 -> f x = 12 * x + 7) ->
    (forall x, x > 0 -> g x = 5 * x + 2) ->
    (forall x, x > 0 -> h x = Nat.gcd (f x) (g x)) ->
    
    exists l : list nat,
      NoDup l /\
      (forall y, In y l <-> exists x, h x = y) /\
      List.fold_left Nat.add l 0 = 12.

Proof.
