Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import List.
Require Import Sets.Finite_sets.

Open Scope R_scope.

Theorem mathd_algebra_149 :
  forall (f : R -> R),
  (forall x, x < -5 -> f x = x^2 + 5) ->
  (forall x, x >= -5 -> f x = 3 * x - 8) ->
  exists (l : list R),
    NoDup l /\
    (forall x, In x l <-> f x = 10) /\
    fold_right Rplus 0 l = 6.

Proof.
