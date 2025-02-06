Require Import Nat.
Require Import PeanoNat.
Require Import Arith.
Require Import ZArith.
Require Import Znumtheory.

Open Scope Z_scope.

Theorem mathd_numbertheory_150 :
  forall n : nat,
  ~ prime (Z.of_nat (7 + 30 * n)) -> Z.of_nat 6 <= Z.of_nat n.

Proof.
