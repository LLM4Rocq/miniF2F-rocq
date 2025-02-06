Require Import Reals.
Require Import QArith.
Require Import Coq.QArith.Qround.
Require Import ZArith.

Open Scope R_scope.

Theorem aime_1991_p9 :
  forall (x : R) (m : Q),
    (1 / cos x + tan x = 22 / 7)%R ->
    (1 / sin x + 1 / tan x = Q2R m)%R ->
    (Qnum m + Zpos (Qden m))%Z = 44%Z.

Proof.
