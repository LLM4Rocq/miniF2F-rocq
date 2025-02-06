Require Import Nat.
Require Import List.
Require Import ZArith.
Require Import Arith.
Require Import FSets.
Require Import FSetFacts.
Require Import FSetProperties.
Module NS := FSetWeakList.Make(Nat_as_OT).

Definition fact_prod := fold_right Nat.mul 1 (map fact (seq 1 9)).

Theorem amc12a_2003_p23 :
  exists (S : NS.t),
    NS.cardinal S = 672 /\
    forall k, NS.In k S <->
      (k > 0 /\ exists n, n * n = k /\ (Nat.divide k fact_prod)).


Proof.
