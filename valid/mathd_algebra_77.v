Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_77 :
  forall a b : R,
  a <> 0 -> b <> 0 -> a <> b ->
  (forall x, (fun x => x^2 + a*x + b) x = x^2 + a*x + b) ->
  (fun x => x^2 + a*x + b) a = 0 ->
  (fun x => x^2 + a*x + b) b = 0 ->
  a = 1 /\ b = -2.
Proof.
Admitted.