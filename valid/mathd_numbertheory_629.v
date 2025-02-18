Require Import Arith.
Require Import Nat.

Definition Least (P:nat->Prop) n :=
 P n /\ forall m, P m -> n <= m.

Theorem mathd_numbertheory_629:
  Least (fun t => t > 0 /\ (Nat.lcm 12 t)^3 = (12 * t)^2) 18.
Proof.
Admitted.
