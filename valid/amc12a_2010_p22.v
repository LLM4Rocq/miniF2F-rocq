Require Import Reals.
Require Import Lra.
Require Import Lia.
Require Import Reals.Rfunctions.
Require Import List.

Local Open Scope R_scope.

Theorem amc12a_2010_p22 :
  forall x : R,
  49 <= sum_f_R0 (fun k => Rabs ((INR (S k)) * x - 1)) 118.
Proof.
Admitted.