Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem imo_1962_p4 :
  forall x : R,
    (cos x)^2 + (cos (2*x))^2 + (cos (3*x))^2 = 1 ->
      (exists m : Z, x = PI / 2 + IZR m * PI)
      \/
      (exists m : Z, x = PI / 4 + IZR m * (PI / 2))
      \/
      (exists m : Z, x = PI / 6 + IZR m * (PI / 6))
      \/
      (exists m : Z, x = 5*PI / 6 + IZR m * (PI / 6)).

Proof.
