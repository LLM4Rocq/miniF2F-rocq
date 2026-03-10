Require Import Reals.
Require Import QArith.
Require Import Coq.QArith.Qround.
Require Import ZArith.

Open Scope R_scope.

Theorem aime_1991_p9 :
  forall (x : R),
    cos x <> 0 ->
    sin x <> 0 ->
    (1 / cos x + tan x = 22 / 7)%R ->
    (exists p q : Z, (0 < q)%Z /\ Z.gcd p q = 1%Z /\
      (1 / sin x + 1 / tan x = IZR p / IZR q)%R /\
      (p + q)%Z = 44%Z).

Proof.
Admitted.
