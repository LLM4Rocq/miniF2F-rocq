Require Import Reals.

Definition bijective {A B} (f : A -> B) :=
  (forall y, exists x, f x = y) /\
  (forall x1 x2, f x1 = f x2 -> x1 = x2).

Theorem mathd_algebra_451 :
  forall (σ : R -> R) (σ_inv : R -> R),
    bijective σ ->
    σ_inv (- 15)%R = 0%R ->
    σ_inv 0%R = 3%R ->
    σ_inv 3%R = 9%R ->
    σ_inv 9%R = 20%R ->
    (forall x, σ (σ_inv x) = x) ->
    (forall x, σ_inv (σ x) = x) ->
    σ (σ 9%R) = 0%R.

Proof.
