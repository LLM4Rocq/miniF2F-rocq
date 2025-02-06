Require Import Coq.Reals.Reals.

Open Scope R_scope.



Definition logb (a b : R) := ln b / ln a.

Theorem mathd_algebra_22 : logb (5^2) (5^4) = 2.

Proof.
