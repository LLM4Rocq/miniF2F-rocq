Require Import ZArith.
Require Import Nat.
Require Import PArith.
Require Import Arith.
Require Import Znumtheory.
Require Import Lia.

Theorem amc12_2000_p6 (p q : Z) :
    0 < p -> 0 < q ->
    prime p -> prime q ->
    (4 <= p <= 18)%Z ->
    (4 <= q <= 18)%Z ->
    p * q - (p + q) <> 194.
Proof.
