Require Import ZArith.
Require Import Znumtheory.
Require Import List.

Open Scope nat_scope.

Definition inverse (n p : nat) := (n ^ (p - 2)) mod p.

Theorem mathd_numbertheory_764 :
  forall (p : nat), 7 <= p ->
  prime (Z.of_nat p) ->
  let l := map (fun k => inverse k p * inverse (k + 1) p) (seq 1 (p - 2)) in
  (fold_left plus l 0) mod p = 2.
Proof.
