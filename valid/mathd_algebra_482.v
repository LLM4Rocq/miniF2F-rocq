Require Import Reals.
Require Import Arith.
Require Import Znumtheory.
Require Import Lia.

Open Scope R_scope.

Theorem mathd_algebra_482 :
  forall (m n : nat) (k : R) (f : R -> R),
    Znumtheory.prime (Z.of_nat m) ->
    Znumtheory.prime (Z.of_nat n) ->
    m <> n ->
    (forall x : R, f x = x^2 - 12 * x + k) ->
    f (INR m) = 0 ->
    f (INR n) = 0 ->
    k = 35.

Proof.
