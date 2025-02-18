Require Import Nat.
Require Import List.
Require Import ZArith.
Require Import SetoidList.

Definition divisors n := filter (fun k => n mod k =? 0) (seq 1 n).

Theorem mathd_numbertheory_451:
  forall (l: list nat),
  NoDup l ->
  (forall n, In n l <->
    2010 <= n /\ n <= 2019 /\
    exists m, length (divisors m) = 4 /\
    list_sum (divisors m) = n) ->
  list_sum l = 2016.
Proof.
