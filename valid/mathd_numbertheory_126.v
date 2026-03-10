Require Import PeanoNat.

Theorem mathd_numbertheory_126:
  forall (a : nat),
  (0 < a) ->
  (Nat.gcd a 40 = 8) ->
  (Nat.lcm a 40 = 40) ->
  (forall b : nat, (0 < b) -> (Nat.gcd b 40 = 8 /\ Nat.lcm b 40 = 40 -> a <= b)) ->
  a = 8.
Proof.
Admitted.