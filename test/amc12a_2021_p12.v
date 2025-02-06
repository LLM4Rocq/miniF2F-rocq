Require Import Reals.
Require Import Coquelicot.Coquelicot.

Open Scope R_scope.
Open Scope C_scope.

Theorem amc12a_2021_p12 
  (a b c d : R)
  (f : C -> C)
  (h0 : forall z, f z = z^6 - 10 * z^5 + a * z^4 + b * z^3 + c * z^2 + d * z + 16)
  (h1 : forall z, f z = 0 -> 
        Im z = 0 /\ (0 < Re z)%R /\ IZR (floor (Re z)) = Re z) :
  b = -88.

Proof.
