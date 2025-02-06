Require Import Reals.

Open Scope R_scope.

Theorem aime_1988_p8 :
  forall f : nat -> nat -> R,
  (forall x, (x > 0)%nat -> f x x = INR x) ->
  (forall x y, (x > 0)%nat -> (y > 0)%nat -> f x y = f y x) ->
  (forall x y, (x > 0)%nat -> (y > 0)%nat ->
      (INR x + INR y) * f x y = INR y * f x (x + y)%nat) ->
  f 14%nat 52%nat = 364.
Proof.
