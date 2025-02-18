Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope nat_scope.

Theorem aime_1999_p11 :
  forall (m n : nat),
  (sum_n_m (fun k => sin (5 * INR k * PI / 180)) 1 35 =
    tan (INR m / INR n * PI / 180))%R ->
  Nat.gcd m n = 1 ->
  m < 90 * n ->
  m + n = 177.
Proof.
