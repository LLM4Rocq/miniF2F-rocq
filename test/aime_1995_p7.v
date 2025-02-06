Require Import Reals.

Open Scope R_scope.

Theorem aime_1995_p7 :
  forall (k m n : nat) (t : R),
  (0 < k)%nat -> (0 < m)%nat -> (0 < n)%nat ->
  (Nat.gcd m n = 1)%nat ->
  (1 + sin t) * (1 + cos t) = 5 / 4 ->
  (1 - sin t) * (1 - cos t) = INR m / INR n - sqrt (INR k) ->
  (k + m + n = 27)%nat.
Proof.
