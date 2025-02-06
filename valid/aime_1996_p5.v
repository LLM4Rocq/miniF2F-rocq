Require Import Reals.
Require Import Coq.Reals.Reals.

Open Scope R_scope.

Theorem aime_1996_p5 :
  forall (a b c r s t : R) (f g : R -> R),
  (forall x, f x = x^3 + 3*x^2 + 4*x - 11) ->
  (forall x, g x = x^3 + r*x^2 + s*x + t) ->
  f a = 0 ->
  f b = 0 ->
  f c = 0 ->
  g (a + b) = 0 ->
  g (b + c) = 0 ->
  g (c + a) = 0 ->
  a <> b ->
  b <> c ->
  c <> a ->
  t = 23.
Proof.
Admitted.