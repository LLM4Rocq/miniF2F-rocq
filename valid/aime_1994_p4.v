Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import List.
Require Import ZArith.
Require Import Lia.

Open Scope R_scope.

Theorem aime_1994_p4 :
  forall n : nat,
  (0 < n)%nat ->
  (sum_f_R0 (fun k => IZR (Int_part (ln (INR (S k)) / ln 2))) (pred n)) = IZR 1994 ->
  n = 312%nat.

Proof.
