Require Import ZArith.
Require Import Nat.
Require Import Lia.

Open Scope Z_scope.

Theorem numbertheory_aoddbdiv4asqpbsqmod8eq1 :
  forall (a : Z) (b : nat),
    Z.odd a = true ->
    (exists k : nat, b = 4 * k)%nat ->
    (a * a + Z.of_nat (b * b)) mod 8 = 1.

Proof.
