Require Import Reals.
Require Import Sets.Ensembles.
Require Import Sets.Finite_sets_facts.
Open Scope R_scope.

Theorem amc12b_2021_p13 :
  exists (S : Ensemble R), 
  (forall x : R, In R S x <-> 
    (0 < x /\ x <= 2 * PI /\ 1 - 3 * sin x + 5 * cos (3 * x) = 0)) /\
  cardinal R S 6.

Proof.
