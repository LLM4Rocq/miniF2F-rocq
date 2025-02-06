Require Import List.
Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope C_scope.



Theorem amc12a_2019_p21 :
  forall (z : C),
  z = (1 + Ci) / sqrt 2 ->
  fold_left Cplus (map (fun k => z ^ (k ^ 2)) (seq 1 12)) 0 *
  fold_left Cplus (map (fun k => 1 / z ^ (k ^ 2)) (seq 1 12)) 0 = 36.
Proof.
