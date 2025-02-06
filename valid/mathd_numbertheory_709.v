Require Import Coq.Init.Nat.
Require Import Coq.Lists.List.
Require Import Coq.Arith.EqNat.
Require Import Coq.Arith.PeanoNat.
Import ListNotations.

Fixpoint divisors (n : nat) : list nat :=
  if n =? 0 then []
  else filter (fun d => Nat.modulo n d =? 0) (seq 1 n).

Theorem mathd_numbertheory_709
  (n : nat)
  (h₀ : n > 0)
  (h₁ : length (divisors (2 * n)) = 28)
  (h₂ : length (divisors (3 * n)) = 30) :
  length (divisors (6 * n)) = 35.

Proof.
