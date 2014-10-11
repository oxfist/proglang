(* This is a comment. This is our first program. *)

val x = 34; (* int *)
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17; (* Another int *)
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x : int, y : int, z : int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val q = z + 1;
(* static environment: x : int, y : int, z : int, q : int *)

val abs_of_z = if z < 0 then 0 - z else z;
(* dynamic environment: ..., abs_of_z --> 70 *)

(* Optional parentheses *)
val abs_of_z_simpler = abs z;
