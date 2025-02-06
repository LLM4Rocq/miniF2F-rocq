Require Import Reals.
Require Import FunctionalExtensionality.

Definition bijective {X Y : Type} (f : X -> Y) :=
  (exists g : Y -> X, (forall x, g (f x) = x) /\ (forall y, f (g y) = y)).

Definition inverse {X Y : Type} (f : X -> Y) (g : Y -> X) :=
  (forall x, g (f x) = x) /\ (forall y, f (g y) = y).

Theorem mathd_algebra_393 :
  forall (f : R -> R),
  (forall x, f x = 4 * x * x * x + 1)%R ->
  bijective f ->
  exists g, inverse f g /\ (g 33 = 2)%R.

Proof.
