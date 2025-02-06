Require Import Coq.Arith.Arith.
Require Import Coq.Reals.Reals.
Require Import Coq.Reals.Rdefinitions.
Require Import Coq.Lists.List.
Import ListNotations.

Theorem amc12a_2002_p21
  (u : nat -> nat)
  (h0 : u 0 = 4)
  (h1 : u 1 = 7)
  (h2 : forall n, n >= 2 -> u (n + 2) = (u n + u (n + 1)) mod 10) :
  forall n, (fold_right plus 0 (map u (seq 0 n))) > 10000 -> 1999 <= n.
Proof.
Admitted.
