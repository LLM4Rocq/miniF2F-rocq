Require Import PeanoNat.

Theorem mathd_numbertheory_126:
  forall (x a : nat),
  (0 < x) -> (0 < a) ->
  (Nat.gcd a 40 = x + 3) ->
  (Nat.lcm a 40 = x * (x + 3)) ->
  (forall b : nat, (0 < b) -> (Nat.gcd b 40 = x + 3 /\ Nat.lcm b 40 = x * (x + 3) -> a <= b)) ->
  a = 8.
Proof.
Admitted.