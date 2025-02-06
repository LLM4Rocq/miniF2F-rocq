Require Import Reals.
Require Import FunctionalExtensionality.

Theorem mathd_algebra_209 :
  forall (f f_inv : R -> R),
  (forall x, f (f_inv x) = x) ->
  (forall x, f_inv (f x) = x) ->
  f_inv (IZR 2) = IZR 10 ->
  f_inv (IZR 10) = IZR 1 ->
  f_inv (IZR 1) = IZR 2 ->
  f (f (IZR 10)) = IZR 1.


Proof.
