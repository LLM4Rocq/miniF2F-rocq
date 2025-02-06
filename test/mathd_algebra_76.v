Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_algebra_76 :
  forall f : Z -> Z,
  (forall n, Z.odd n = true -> f n = n * n) ->
  (forall n, Z.even n = true -> f n = n * n - 4 * n - 1) ->
  f 4 = -1.
Proof.
Admitted.