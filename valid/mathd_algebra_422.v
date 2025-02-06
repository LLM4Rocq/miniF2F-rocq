Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_422 :
  forall (x : R) (sigma : R -> R),
    (forall x, sigma x = 5 * x - 12) ->
    exists sigma_inv : R -> R,
      (forall x, sigma_inv x = (x + 12) / 5) ->
      sigma (x + 1) = sigma_inv x ->
      x = 47 / 24.
Proof.
Admitted.