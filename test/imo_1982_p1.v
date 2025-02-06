Require Import Arith.

Theorem imo_1982_p1:
  forall (f : nat -> nat),
  (forall m n, (0 < m /\ 0 < n) -> (f (m + n) - f m - f n = 0 \/ f (m + n) - f m - f n = 1)) ->
  f 2 = 0 ->
  0 < f 3 ->
  f 9999 = 3333 ->
  f 1982 = 660.
Proof.
Admitted.