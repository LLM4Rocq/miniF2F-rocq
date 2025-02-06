Require Import Reals.

Open Scope R_scope.

Theorem induction_1pxpownlt1pnx
    (x : R)
    (n : nat)
    (h₀ : -1 < x) :
    (1 + INR n * x) <= Rpower (1 + x) (INR n).

Proof.
