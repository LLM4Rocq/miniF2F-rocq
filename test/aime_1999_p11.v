Require Import Reals.
Require Import Rfunctions.
Require Import QArith.
Require Import Coquelicot.Coquelicot.
Require Import Lra.

Open Scope R_scope.

Theorem aime_1999_p11 :
  forall (m : Q),
  let n := Z.pos (Qden m) in
  let p := Qnum m in
  (0 < m)%Q ->
  sum_n_m (fun k => sin (5 * INR k * PI / 180)) 1 35 =
   tan (IZR n / IZR p * PI / 180) ->
  IZR n / IZR p < 90 ->
  IZR n + IZR p = 177.

Proof.
