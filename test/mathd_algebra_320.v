Require Import Reals.
Open Scope R_scope.

Theorem mathd_algebra_320
  (x : R) (a b c : nat)
  (H_pos_a : (INR a > 0)%R)
  (H_pos_b : (INR b > 0)%R)
  (H_pos_c : (INR c > 0)%R)
  (H_pos_x : x >= 0)
  (H_quad : 2 * x^2 = 4 * x + 9)
  (H_repr : x = (INR a + sqrt (INR b)) / INR c)
  (H_c_val : c = 2%nat) :
  (INR (a + b + c) = 26)%R.

Proof.
