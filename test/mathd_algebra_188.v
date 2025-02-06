Require Import Reals.

Open Scope R_scope.

Theorem mathd_algebra_188
  (sigma : R -> R)
  (inv_sigma : R -> R)
  (H_bij : forall x : R, sigma (inv_sigma x) = x /\ inv_sigma (sigma x) = x)
  (H1 : sigma 2 = 4)
  (H2 : inv_sigma 2 = 4) :
  sigma (sigma 2) = 2.

Proof.
