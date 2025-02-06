Require Import ZArith.
Require Import Nat.
Require Import PArith.
Require Import Arith.
Require Import Znumtheory.
Require Import Lia.

Theorem amc12_2000_p6 :
  forall (p q : positive),
    prime (Z.pos p) /\ prime (Z.pos q) ->
    (4 <= Pos.to_nat p <= 18)%nat ->
    (4 <= Pos.to_nat q <= 18)%nat ->
    Z.pos p * Z.pos q - (Z.pos p + Z.pos q) <> 194.

Proof.
