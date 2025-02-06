Require Import Reals.
Require Import Arith.
Require Import Nat.
Require Import ZArith.

Open Scope R_scope.

Theorem mathd_numbertheory_530 :
  forall (n k : nat),
  (0 < n)%nat ->
  (0 < k)%nat ->
  (IZR (Z_of_nat n) / IZR (Z_of_nat k) < 6)%R ->
  (5 < IZR (Z_of_nat n) / IZR (Z_of_nat k))%R ->
  (22 <= Nat.div (Nat.lcm n k) (Nat.gcd n k))%nat.

Proof.
