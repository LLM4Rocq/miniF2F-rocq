Require Import ZArith.
Require Import List.
Require Import Lia.

Open Scope nat_scope.

Theorem amc12a_2020_p7 :
  forall a : nat -> nat,
  (a O)^3 = 1 ->
  (a 1)^3 = 8 ->
  (a 2)^3 = 27 ->
  (a 3)^3 = 64 ->
  (a 4)^3 = 125 ->
  (a 5)^3 = 216 ->
  (a 6)^3 = 343 ->
  Z.of_nat (6 * ((a O)^2 + (a 1)^2 + (a 2)^2 + (a 3)^2 + 
                 (a 4)^2 + (a 5)^2 + (a 6)^2) - 
           2 * ((a O)^2 + (a 1)^2 + (a 2)^2 + (a 3)^2 + 
                (a 4)^2 + (a 5)^2)) = 658%Z.

Proof.
