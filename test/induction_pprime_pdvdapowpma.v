Require Import Nat.
Require Import ZArith.
Require Import Znumtheory.

Open Scope nat_scope.

Theorem induction_pprime_pdvdapowpma :
  forall (p a : nat),
    0 < a ->
    prime (Z.of_nat p) ->
    Nat.divide p (pow a p - a).

Proof.
