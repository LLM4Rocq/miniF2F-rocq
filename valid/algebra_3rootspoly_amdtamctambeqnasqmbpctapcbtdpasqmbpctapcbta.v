Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.

Theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (a b c d : C) :
  (a - d) * (a - c) * (a - b) = -(((a ^ 2 - (b + c) * a) + c * b) * d) + (a ^ 2 - (b + c) * a + c * b) * a.

Proof.
