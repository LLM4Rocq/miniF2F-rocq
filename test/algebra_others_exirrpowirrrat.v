Require Import Reals.
Require Import Psatz.
Require Import Classical.

Definition irrational (x : R) := 
  ~ exists (p q : Z), q <> 0%Z /\ x = (IZR p / IZR q)%R.

Theorem algebra_others_exirrpowirrrat :
  exists a b : R, 
    irrational a /\ irrational b /\ ~ irrational (Rpower a b).

Proof.
