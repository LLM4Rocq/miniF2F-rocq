Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope R_scope.

Theorem algebra_cubrtrp1oncubrtreq3_rcubp1onrcubeq5778 :
  forall r : R,
  Rpower r (1/3) + (1 / Rpower r (1/3)) = 3 ->
  r^3 + (1 / r^3) = 5778.

Proof.
