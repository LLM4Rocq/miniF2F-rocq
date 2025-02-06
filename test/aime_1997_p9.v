Require Import Reals.
Open Scope R_scope.

Theorem aime_1997_p9 :
  forall a : R,
    0 < a ->
    (1/a - IZR(Int_part (1/a)) = a^2 - IZR(Int_part (a^2))) ->
    2 < a^2 ->
    a^2 < 3 ->
    a^12 - 144 * (1/a) = 233.

Proof.
