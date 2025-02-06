Require Import ZArith.
Open Scope Z_scope.

Theorem mathd_numbertheory_668 (l r : Z) : 
  (0 <= l < 7)%Z -> (0 <= r < 7)%Z ->
  (l * (2 + 3) mod 7 = 1)%Z ->
  (exists a b, (0 <= a < 7)%Z /\ (0 <= b < 7)%Z /\
            (a * 2 mod 7 = 1)%Z /\ (b * 3 mod 7 = 1)%Z /\
            (r = (a + b) mod 7)%Z) ->
  l - r = 1.
Proof.
Admitted.