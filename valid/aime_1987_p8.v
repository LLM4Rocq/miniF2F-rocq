Require Import Reals.
Require Import Nat.
Require Import Classical_Pred_Type.

(* The theorem states that 112 is the greatest positive natural number n
   for which there exists a unique k such that 8/15 < n/(n+k) < 7/13 *)
Theorem aime_1987_p8:
  forall n : nat,
  0 < n ->
  (exists! k : nat,
    (8/15 < INR n / INR (n + k))%R /\
    (INR n / INR (n + k) < 7/13)%R) ->
  n <= 112.
Proof.
Admitted.
