Require Import Reals.
Require Import List.
Require Import SetoidList.
Open Scope R_scope.

Theorem aime_1983_p3 :
  forall (f : R -> R)
         (roots : list R),
  (forall x, f x = x^2 + 18*x + 30 - 2 * sqrt(x^2 + 18*x + 45)) ->
  (forall x, In x roots <-> f x = 0) ->
  NoDup roots ->
  fold_left Rmult roots 1 = 20.

Proof.
