Require Import Coq.Reals.Reals.
Open Scope R_scope.



Theorem amc12a_2003_p24:
  forall (a b : R),
    b <= a ->
    1 < b ->
    ln(a/b) / ln(a) + ln(b/a) / ln(b) <= 0.

Proof.
