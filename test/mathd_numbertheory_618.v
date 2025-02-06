Require Import Coq.Arith.Arith.
Require Import Coq.ZArith.BinInt.

Theorem mathd_numbertheory_618:
  forall n : nat,
  forall p : nat -> nat,
  (forall x, p x = x*x - x + 41) ->
  1 < Nat.gcd (p n) (p (S n)) ->
  41 <= n.
Proof.
Admitted.