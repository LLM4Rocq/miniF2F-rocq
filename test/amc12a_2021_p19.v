Require Import Reals.
Require Import FunctionalExtensionality.
Require Import RIneq.
Require Import Classical_Pred_Type.
Require Import ClassicalEpsilon.

Open Scope R_scope.

Theorem amc12a_2021_p19 :
  exists S : R -> Prop,
  (forall x, S x <-> (0 <= x /\ x <= PI /\ 
    sin (PI/2 * cos x) = cos (PI/2 * sin x))) /\
  exists x1 x2, 
    x1 <> x2 /\
    S x1 /\ S x2 /\
    forall x, S x -> (x = x1 \/ x = x2).

Proof.
