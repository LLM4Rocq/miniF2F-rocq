Require Import Reals.
Require Import Coquelicot.Coquelicot.
From Coq Require Import ZArith.
From Coq Require Import Lia.
From Coq Require Import Znumtheory.  

Open Scope R_scope.

Theorem amc12a_2002_p12 :
  forall (f : R -> R) (k : R) (a b : Z),
    (forall x : R, f x = x ^ 2 - 63 * x + k) ->
    f (IZR a) = 0 ->
    f (IZR b) = 0 ->
    a <> b ->
    prime a /\ prime b ->
    k = 122.


Proof.
