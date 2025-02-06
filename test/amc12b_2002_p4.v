Require Import Reals.
Require Import ZArith.
Require Import Reals.Rfunctions.
Require Import Lia.

Open Scope R_scope.

Theorem amc12b_2002_p4 :
  forall (n : nat),
    (n > 0)%nat ->
    exists k : Z, 
      (1/2 + 1/3 + 1/7 + 1/(INR n))%R = IZR k ->
      n = 42%nat.



Proof.
