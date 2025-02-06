Require Import Nat.
Require Import Arith.
Require Import Znumtheory.
Require Import ZArith.

Theorem imo_2001_p6 :
  forall (a b c d : nat),
    (0 < a)%nat /\ (0 < b)%nat /\ (0 < c)%nat /\ (0 < d)%nat ->
    (d < c)%nat ->
    (c < b)%nat ->
    (b < a)%nat ->
    (a * c + b * d = (b + d + a - c) * (b + d + c - a))%nat ->
    ~ prime (Z.of_nat (a * b + c * d)).

Proof.
