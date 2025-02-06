Require Import Coq.Reals.Reals.
Require Import Coq.QArith.QArith.

Open Scope R_scope.

Theorem aimeI_2000_p7:
  forall (x y z : R) (m : Q),
    (0 < x /\ 0 < y /\ 0 < z) ->
    x * y * z = 1 ->
    x + /z = 5 ->
    y + /x = 29 ->
    z + /y = Q2R m ->
    Qgt m 0 ->
    (Zpos (Qden m) + Qnum m)%Z = 5%Z.

Proof.
