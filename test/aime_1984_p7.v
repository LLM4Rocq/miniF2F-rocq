Require Import Coq.ZArith.ZArith.

Open Scope Z_scope.

Theorem aime_1984_p7:
  forall (f : Z -> Z),
  (forall n, 1000 <= n -> f n = n - 3) ->
  (forall n, n < 1000 -> f n = f (f (n + 5))) ->
  f 84 = 997.
Proof.
Admitted.