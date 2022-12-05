
open Ir_types
open Pprint_ast
open Printf

let p_blockend = function
| IRSReturn(Some expr) ->
  sprintf "IRSReturn(%s)" (p_expr expr) 
| IRSReturn(None) ->
  "IRSReturn()"

let p_ir_stmt = function
| IRSVarDecl(name, t) ->
  sprintf "IRSVarDecl(\"%s\", %s)" (name) (p_typ t)
| IRSVarAssign(name, expr) ->
  sprintf "IRSVarAssign(\"%s\", %s)" (name) (p_expr expr)

let rec p_ir_stmt_l = function
| [] -> "\n\t"
| (hd::tl) ->
  sprintf "\n\t\t%s %s" (p_ir_stmt hd) (p_ir_stmt_l tl)

let p_ir_block = function
| IRBlock(name, ir_stmt_l, blockend) ->
  sprintf "{\n\tIRBlock({%s, %s, %s})\n}" name (p_ir_stmt_l ir_stmt_l) (p_blockend blockend)

let rec p_ir_func = function
| [] -> ()
| (IRFunc(t, name, params, ir_block)::tl) ->
  let ir_params_str = p_param_l params in
  let ir_block_str = p_ir_block ir_block in
  let () = printf "IRFunc(%s, %s, {%s}, %s)\n" (p_typ t) name ir_params_str ir_block_str in
  p_ir_func tl