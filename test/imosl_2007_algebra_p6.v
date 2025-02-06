Require Import Reals.
Require Import Psatz.
Require Import List.

Theorem imosl_2007_algebra_p6 :
  forall (a : nat -> R),
  (sum_f_R0 (fun x => (a (S x))^2) 99 = 1)%R ->
  (sum_f_R0 (fun x => (a (S x))^2 * a (S (S x))) 98 + (a 100%nat)^2 * a 1%nat < 12/25)%R.

Proof.
