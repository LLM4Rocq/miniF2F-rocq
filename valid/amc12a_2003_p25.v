Require Import Reals.
Require Import Sets.Ensembles.
Require Import Sets.Image.

Open Scope R_scope.

Theorem amc12a_2003_p25 :
  forall (a b : R) (f : R -> R),
    b > 0 ->
    (forall x : R, f x = sqrt (a * x^2 + b * x)) ->
    (forall x : R, In R (fun t => 0 <= a * t^2 + b * t) x <->
      exists z : R, In R (fun t => 0 <= a * t^2 + b * t) z /\ f z = x) ->
    a = 0 \/ a = -4.

Proof.
