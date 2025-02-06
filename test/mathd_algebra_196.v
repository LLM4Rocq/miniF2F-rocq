Require Import Reals.
Require Import ClassicalDescription.

Open Scope R_scope.

Theorem mathd_algebra_196 :
  exists (S : R -> Prop),
  (forall x, S x <-> Rabs (2 - x) = 3) /\
  exists sumS, 
    (forall x, S x -> x = -1 \/ x = 5) /\
    (S (-1) /\ S 5) /\
    sumS = -1 + 5 /\
    sumS = 4.

Proof.
