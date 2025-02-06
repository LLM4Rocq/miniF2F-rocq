Require Import Reals.
Require Import ZArith.
Require Import Finite_sets_facts.
Require Import Coquelicot.Coquelicot.

Theorem amc12b_2021_p1:
  let S := fun x:Z => (Rabs (IZR x) < 3 * PI)%R in
  cardinal Z S 19%nat.

Proof.
