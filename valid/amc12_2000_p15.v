Require Import Reals.
Require Import Coquelicot.Coquelicot.
Require Import List.

Open Scope C_scope.

Theorem amc12_2000_p15 :
  forall (f : C -> C),
  (forall x : C, f (x / 3) = x^2 + x + 1) ->
  (exists l : list C, NoDup l /\
    (forall z : C, f (3*z) = 7 <-> In z l) /\
    fold_left Cplus l 0 = -1/9).
Proof.
Admitted.
