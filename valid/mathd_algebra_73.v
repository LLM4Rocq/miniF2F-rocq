Require Import Coquelicot.Coquelicot.
Open Scope C_scope.

Theorem mathd_algebra_73:
  forall (p q r x: C),
    (x - p) * (x - q) = (r - p) * (r - q) ->
    x <> r ->
    x = p + q - r.

Proof.
