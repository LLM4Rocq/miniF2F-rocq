Require Import Nat.
Require Import Arith.

Theorem imo_1984_p2 :
  forall (a b : nat),
    0 < a -> 0 < b ->
    ~ (Nat.divide 7 a) ->
    ~ (Nat.divide 7 b) ->
    ~ (Nat.divide 7 (a + b)) ->
    (Nat.divide (7^7) ((a + b)^7 - a^7 - b^7)) ->
    19 <= a + b.

Proof.
