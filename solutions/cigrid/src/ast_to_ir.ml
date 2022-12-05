
open Ast_types
open Ir_types

let convert_blockend = function 
| SReturn(Some expr) ->
  IRSReturn(Some expr)
| SReturn(None) ->
  IRSReturn(None)
| _ ->
  let () = print_endline "blockend can only be return option" in
    exit 1

let rec convert_stmt_l acc = function
| [] -> 
  let () = print_endline "should not be here, base case at len 1" in
    exit 1
| [last] -> 
  let ir_stmt_l = List.rev acc in
  let blockend = convert_blockend last in
    (ir_stmt_l, blockend)
| (hd::tl) ->
  begin match hd with
  | SVarDef(t, name, expr) -> (* add in reverse order to handle reverse in the end *)
    convert_stmt_l (IRSVarAssign(name, expr)::(IRSVarDecl(name, t)::acc)) tl
  | SVarAssign(name, expr) ->
    convert_stmt_l (IRSVarAssign(name, expr)::acc) tl
  | SReturn(_) | SBreak | SExpr _| SScope _ | SIf (_, _, _) | SWhile (_, _) ->
    let () = print_endline "not implemented 2!" in
      exit 1
  end

let convert_stmt = function
| SScope(stmt_l) ->
  convert_stmt_l [] stmt_l
| _ -> 
  let () = print_endline "not implemented 2!" in
  exit 1

let convert_global = function
| GFuncDef(t, name, params, stmt) ->
  let (ir_stmt_l, blockend) = convert_stmt stmt in
  IRFunc(t, name, params, IRBlock(name, ir_stmt_l, blockend))
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