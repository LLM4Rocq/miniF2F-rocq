Require Import Reals.
Require Import Sets.Ensembles.
Require Import Sets.Finite_sets.

Open Scope R_scope.

Definition solution_set : Ensemble R :=
  fun x => 0 <= x /\ x <= 2 * PI /\ tan (2 * x) = cos (x / 2).

Theorem amc12a_2020_p9 :
  exists (S : Ensemble R),
    Same_set R S solution_set /\
    Finite R S /\
    cardinal R S 5.

Proof.
