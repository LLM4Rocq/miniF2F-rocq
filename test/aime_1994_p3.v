Require Import ZArith.
Open Scope Z_scope.

Theorem aime_1994_p3:
  forall (f : Z -> Z),
    (forall x, f x + f (x - 1) = x * x) -> (f 19 = 94) -> (f 94 mod 1000 = 561).
Proof.
Admitted.