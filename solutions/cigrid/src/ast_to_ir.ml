
open Ast_types
open Ir_types

let rec convert_stmt_l = function
| [] -> []
| (hd::tl) ->
  begin match hd with
  | SVarDef(t, name, expr) ->
    (IRSVarDecl(name, t)::(IRSVarAssign(name, expr)::convert_stmt_l tl))
  | SVarAssign(name, expr) ->
    (IRSVarAssign(name, expr)::convert_stmt_l tl)
  | SReturn(Some expr) ->
    (IRSReturn(Some expr)::convert_stmt_l tl)
  | SReturn(None) ->
    (IRSReturn(None)::convert_stmt_l tl)
  | _ -> 
    let () = print_endline "not implemented 1!" in
    exit 1
  end

let convert_stmt = function
| SScope(stmt_l) ->
  convert_stmt_l stmt_l
| _ -> 
  let () = print_endline "not implemented 2!" in
  exit 1

let convert_global = function
| GFuncDef(t, name, params, stmt) ->
  let ir_stmt_l = convert_stmt stmt in
  IRFunc(t, name, params, IRBlock(name, ir_stmt_l))
| _ -> 
  let () = print_endline "not implemented 3!" in
  exit 1

let convert = function
| Prog(g_list) ->
  let rec work = function
    | [] -> []
    | (hd::tl) ->
      (convert_global hd::work tl)
  in work g_list