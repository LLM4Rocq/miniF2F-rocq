

Require Import Coq.Arith.Arith.
Require Import Coq.Arith.PeanoNat.

Theorem amc12b_2020_p6:
  forall (n : nat),
    9 <= n ->
    exists x : nat,
      x ^ 2 = (fact (n + 2) - fact (n + 1)) / fact n.

Proof.
