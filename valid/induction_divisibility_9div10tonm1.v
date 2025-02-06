Require Import Coq.Numbers.Natural.Abstract.NDiv.
Require Import Coq.Arith.PeanoNat.

Theorem induction_divisibility_9div10tonm1 :
  forall n : nat, 0 < n -> Nat.divide 9 (10^n - 1).

Proof.
