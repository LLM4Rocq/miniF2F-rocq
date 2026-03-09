Require Import Coq.Arith.Arith.
Require Import Coq.ZArith.BinInt.

Theorem mathd_numbertheory_618:
  forall n : nat,
  forall p : nat -> nat,
  (forall x, p x = x*x - x + 41) ->
  0 < n ->
  1 < Nat.gcd (p n) (p (S n)) ->
  40 <= n.
Proof.
Admitted.