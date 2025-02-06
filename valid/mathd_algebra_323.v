Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_323:
  forall (sigma sigma_inv : R -> R),
    
    (forall x, sigma x = x ^ 3 - 8) ->
    
    (forall x, sigma_inv (sigma x) = x) ->
    (forall x, sigma (sigma_inv x) = x) ->
    
    sigma_inv (sigma (sigma_inv 19)) = 3.

Proof.
