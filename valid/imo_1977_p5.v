Require Import ZArith.
Require Import Reals.

Theorem imo_1977_p5 : 
  forall (a b q r : nat),
    r < a + b ->  (* remainder condition *)
    a*a + b*b = (a + b) * q + r ->  (* division algorithm *)
    q*q + r = 1977 ->  (* target sum *)
    (Z.abs (Z.of_nat a - 22)%Z = 15%Z /\ Z.abs (Z.of_nat b - 22)%Z = 28%Z) \/
    (Z.abs (Z.of_nat a - 22)%Z = 28%Z /\ Z.abs (Z.of_nat b - 22)%Z = 15%Z).
Proof.
Admitted.