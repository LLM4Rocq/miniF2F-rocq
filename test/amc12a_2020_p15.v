Require Import Reals.
Require Import Coquelicot.Coquelicot.

Theorem amc12a_2020_p15 :
  forall (a b : C),
    (a^3 - 8 = 0)%C ->
    (b^3 - 8 * b^2 - 8 * b + 64 = 0)%C ->
    Cmod (a - b) <= 2 * sqrt (IZR 21).

Proof.
