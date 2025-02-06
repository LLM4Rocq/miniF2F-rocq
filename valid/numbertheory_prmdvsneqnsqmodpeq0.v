Require Import ZArith.
Require Import Znumtheory.

Theorem numbertheory_prmdvsneqnsqmodpeq0:
  forall (n : Z) (p : positive),
  prime (Z.pos p) -> (Z.divide (Z.pos p) n <-> (n * n) mod (Z.pos p) = 0%Z).

Proof.
