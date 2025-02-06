Require Import Coq.Reals.Reals.
Require Import Coq.Init.Nat.
Require Import Coq.micromega.Lra.

Open Scope R_scope.



Theorem amc12a_2021_p14 :
  ( (sum_f_R0 (fun i => ln (3 ^ ((i+1)*(i+1))) / ln (5 ^ (i+1))) 19)
    * (sum_f_R0 (fun i => ln (25 ^ (i+1)) / ln (9 ^ (i+1))) 99)
  ) = 21000.

Proof.
