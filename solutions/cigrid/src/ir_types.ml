
open Ast_types

(* { t, expression } from ast_types.ml *)

type ir_stmt =
| IRSVarDecl of string * t
| IRSVarAssign of string * expression
| IRSReturn of expression option

(* type ir_blockend =
| IRSReturn of expression option *)

type ir_block =
| IRBlock of string * ir_stmt list (* * ir_blockend *)

type ir_func =
| IRFunc of t * string * (t * string) list * ir_block
