Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import List.

Open Scope C_scope.

Theorem amc12a_2002_p1 :
  forall (f : C -> C) (roots : list C),
    (forall x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6)) ->
    NoDup roots ->
    (forall x, In x roots <-> f x = 0) ->
    fold_left (fun acc x => acc + x) roots 0 = 7/2.

Proof.
