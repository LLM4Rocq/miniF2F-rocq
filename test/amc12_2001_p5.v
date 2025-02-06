(*
Step-by-Step Translation Process:

1. **Understand the Theorem:**
   - *Natural Language Description:* The product of all positive odd integers less than 10,000 is equal to \( \frac{10000!}{2^{5000} \cdot 5000!} \).

2. **Analyze Lean and Isabelle Versions:**
   - **Lean:** Uses `finset.prod` to compute the product over a filtered set of integers.
   - **Isabelle:** Utilizes the `\<Prod>` operator over a set defined by natural numbers less than 10,000 and odd.

3. **Choose Coq Constructs:**
   - Use `List.fold_left` with `mult` to compute the product of a list.
   - Use `List.filter` to select odd integers from the range.
   - Use `List.seq` to generate a list of integers from 1 to 9999.
   - Utilize `fact` for factorial and `Nat.pow` for exponentiation.

4. **Import Necessary Libraries:**
   - `Coq.Arith.Arith` for arithmetic operations.
   - `Coq.Lists.List` for list operations.
   - `Coq.Init.Nat` for natural numbers.

5. **Define the Theorem in Coq:**
   - Express the product of all positive odd integers less than 10,000.
   - Equate it to \( \frac{10000!}{2^{5000} \cdot 5000!} \).
   - Use `Admitted` for the proof, as it is to be addressed later.

*)

Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Require Import Coq.Init.Nat.
Import ListNotations.

Theorem amc12_2001_p5 :
  (* Product of all positive odd integers less than 10,000 *)
  (fold_left Nat.mul (filter Nat.odd (seq 1 9999)) 1)
  = (fact 10000) / (Nat.pow 2 5000 * fact 5000).
Proof.
Admitted.
