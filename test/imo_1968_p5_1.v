Require Import Reals.
Open Scope R_scope.

Theorem imo_1968_p5_1 :
  forall (a : R) (f : R -> R),
  0 < a ->
  (forall x, f (x + a) = 1 / 2 + sqrt (f x - (f x)^2)) ->
  exists b : R, b > 0 /\ forall x, f (x + b) = f x.
Proof.
Admitted.