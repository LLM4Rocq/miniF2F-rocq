Require Import Arith.
Require Import Nat.

Theorem mathd_numbertheory_430 :
  forall (A B C : nat),
  (1 <= A <= 9) ->
  (1 <= B <= 9) ->
  (1 <= C <= 9) ->
  A <> B ->
  A <> C ->
  B <> C ->
  A + B = C ->
  (10 * A + A - B = 2 * C) ->
  (C * B = 10 * A + A + A) ->
  A + B + C = 8.
Proof.
Admitted.