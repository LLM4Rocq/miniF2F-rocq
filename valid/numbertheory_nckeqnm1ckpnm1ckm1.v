Require Import Arith.
Require Import Nat.
Require Import Arith.Factorial.

Theorem numbertheory_nckeqnm1ckpnm1ckm1 :
  forall (n k : nat),
    0 < n /\ 0 < k ->
    k <= n ->
    fact n / (fact k * fact (n - k)) = 
    fact (n-1) / (fact k * fact ((n-1) - k)) + 
    fact (n-1) / (fact (k-1) * fact ((n-1) - (k-1))).

Proof.
