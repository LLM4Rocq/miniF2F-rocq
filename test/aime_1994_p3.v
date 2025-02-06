Require Import ZArith.
Open Scope Z_scope.

Theorem aime_1994_p3:
  forall (x : Z) (f : Z -> Z),
    (f x + f (x - 1) = x * x) -> (f 19 = 94) -> (f 94 mod 1000 = 561).
Proof.
Admitted.