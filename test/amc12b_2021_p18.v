Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem amc12b_2021_p18 :
  forall z : C,
  12 * (Cmod z)² = 
    2 * (Cmod (z + 2))² + 
    (Cmod (z * z + 1))² + 31 ->
  z + 6 / z = -2.

Proof.
