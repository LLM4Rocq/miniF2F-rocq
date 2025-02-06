Require Import ZArith.
Require Import Lia.

Open Scope Z_scope.

Theorem mathd_algebra_392 :
  forall (n : nat),
    (Z.even (Z.of_nat n)) = true ->
    ((Z.of_nat n - 2)^2 + (Z.of_nat n)^2 + (Z.of_nat n + 2)^2 = 12296)%Z ->
    ((Z.of_nat n - 2) * (Z.of_nat n) * (Z.of_nat n + 2) / 8 = 32736)%Z.

Proof.
