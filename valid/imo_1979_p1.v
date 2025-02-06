Require Import Nat.
Require Import Reals.
Require Import Lia.
Require Import Rdefinitions.
Require Import Rbasic_fun.
Require Import FunctionalExtensionality.
From mathcomp Require Import all_ssreflect.

Theorem imo_1979_p1 (p q : nat) :
  0 < q ->
  (sum_f_R0 (fun k => (-1)^(S k+1) * /INR (S k))%R 1318)%R = (INR p / INR q)%R ->
  exists k, p = k * 1979.

Proof.
