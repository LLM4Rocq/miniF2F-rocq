Require Import ZArith.
Require Import List.
Import ListNotations.

Open Scope Z_scope.

Theorem mathd_algebra_158:
  forall (a : Z),
  (exists k : Z, a = 2 * k) ->              
  (let odd_nums := map Z.of_nat (seq 0 8) in
   let even_nums := map Z.of_nat (seq 0 5) in
   fold_right Z.add 0 (map (fun k => 2 * k + 1) odd_nums) -
   fold_right Z.add 0 (map (fun k => a + 2 * k) even_nums) = 4) ->
  a = 8.

Proof.
