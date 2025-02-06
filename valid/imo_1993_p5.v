Require Import Coq.Numbers.Natural.Abstract.NBase.
Require Import Coq.Arith.Arith.

Theorem imo_1993_p5 :
  exists f : nat -> nat,
    f 1 = 2 /\
    (forall n, f (f n) = f n + n) /\
    (forall n m, n < m -> f n < f m).
Proof.
Admitted.