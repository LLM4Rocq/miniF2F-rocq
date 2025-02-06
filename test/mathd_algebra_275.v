Require Import Coq.Reals.Reals.
Require Import Coquelicot.Coquelicot.

Open Scope R_scope.



Theorem mathd_algebra_275 : 
  forall x : R,
    Rpower (Rpower 11 (1/4)) (3*x - 3) = 1/5 ->
    Rpower (Rpower 11 (1/4)) (6*x + 2) = 121/25.

Proof.
