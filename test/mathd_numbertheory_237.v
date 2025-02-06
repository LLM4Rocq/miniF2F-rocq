Require Import Coq.Lists.List.
Require Import Coq.Arith.Arith.
Import ListNotations.

Open Scope nat_scope.



Theorem mathd_numbertheory_237:
  Nat.modulo (fold_left plus (seq 0 101) 0) 6 = 4.

Proof.
