Require Import ZArith.
Require Import Sets.Ensembles.
Require Import Sets.Finite_sets.

Open Scope Z_scope.

Theorem mathd_algebra_185:
  exists S : Ensemble Z,
  Finite Z S /\
  (forall x, In Z S x <-> Z.abs (x + 4) < 9) /\
  cardinal _ S (Z.to_nat 17).


Proof.
