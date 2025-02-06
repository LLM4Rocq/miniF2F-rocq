Require Import Nat.
Require Import ZArith.

Theorem mathd_numbertheory_495 :
  forall (a b : nat),
    (0 < a /\ 0 < b) ->
    (a mod 10 = 2) ->
    (b mod 10 = 4) ->
    (Nat.gcd a b = 6) ->
    108 <= Nat.lcm a b.
Proof.
Admitted.