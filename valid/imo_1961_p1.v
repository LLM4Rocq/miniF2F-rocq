Require Import Reals.
Open Scope R_scope.

Theorem imo_1961_p1:
  forall (x y z a b : R),
  (0 < x /\ 0 < y /\ 0 < z) ->
  (x <> y) ->
  (y <> z) ->
  (z <> x) ->
  (x + y + z = a) ->
  (x^2 + y^2 + z^2 = b^2) ->
  (x * y = z^2) ->
  (0 < a /\ b^2 < a^2 /\ a^2 < 3 * b^2).
Proof.
Admitted.