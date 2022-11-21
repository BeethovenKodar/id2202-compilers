
open Ast_types

let p_bop = function
  | BopAdd -> "+"
  | BopSub -> "-"
  | BopMul -> "*"
  | BopDiv -> "/"
  | BopMod -> "%"
  | BopLt -> "<"
  | BopGt -> ">"
  | BopLteq -> "<="
  | BopGteq -> ">="
  | BopEqto -> "=="
  | BopNeq -> "!="
  | BopBitAnd -> "&"
  | BopBitOr -> "|"
  | BopAnd -> "&&"
  | BopOr -> "||"

let p_uop = function
  | UnopTilde -> "~"
  | UnopNot -> "!"
  | UnopMinus -> "-"

let p_typ = function
  | TVoid -> "TVoid"
  | TInt -> "TInt"
  | TChar -> "TChar"
  | TIdent(str) -> "TIdent(" ^ str ^ ")"

let p_ident str =
  "TIdent(" ^ str ^ ")"

let rec p_stmt_l = function
  | [] -> ""
  | (hd::tl) ->
    p_stmt hd ^ p_stmt_l tl

and p_stmt_opt = function
  | None -> ""
  | Some stmt -> p_stmt stmt

and p_stmt = function
  | SExpr(e) -> 
    let e_str = p_expr e in
      "SExpr(" ^ e_str ^ ")"
  | SVarDef(t, id, e) ->
    let t_str = p_typ t in
    let id_str = p_ident id in
    let e_str = p_expr e in
      "SVarDef(" ^ t_str ^ ", " ^ id_str ^ ", " ^ e_str ^ ")"
  | SVarAssign(id, e) ->
    let id_str = p_ident id in
    let e_str = p_expr e in
      "SVarAssign(" ^ id_str ^ ", " ^ e_str ^ ")"
  (* | SArrayAssign of string * expression * string option * expression *)
  | SScope(stmt_l) ->
    let stmt_l_str = p_stmt_l stmt_l in
      "SScope({" ^ stmt_l_str ^ "})"
  | SIf(e, if_stmt, else_stmt) ->
    let e_str = p_expr e in
    let if_stmt_str = p_stmt if_stmt in
    let else_stmt_str = p_stmt_opt else_stmt in
      "SIf(" ^ e_str ^ ", " ^ if_stmt_str ^ ", " ^ else_stmt_str ^ ")"
  | SWhile(e, stmt) ->
    let e_str = p_expr e in
    let stmt_str = p_stmt stmt in
      "SWhile(" ^ e_str ^ ", " ^ stmt_str ^ ")"
  | SBreak ->
    "SBreak"
  | SReturn(e) ->
    match e with
    | None -> "SReturn()"
    | Some expr ->
      let expr_str = p_expr expr in
      "SReturn(" ^ expr_str ^ ")" 
    
and p_expr_l = function
  | [] -> ""
  | (hd::tl) ->
    p_expr hd ^ p_expr_l tl
      
and p_expr = function
  | EVar(str) -> "EVar(" ^ str ^ ")"
  | EInt(value) -> "EInt(" ^ (string_of_int value) ^ ")"
  | EChar(c) -> "EChar(" ^ (String.make 1 c) ^ ")"
  (* | EString of string, not s level *)
  | EBinOp(bop, e1, e2) ->
    let bop_str = p_bop bop in
    let e1_str = p_expr e1 in
    let e2_str = p_expr e2 in
      "EBinOp(" ^ bop_str ^ ", " ^ e1_str ^ ", " ^ e2_str ^ ")"
  | EUnOp(uop, e) ->
    let uop_str = p_uop uop in
    let e_str = p_expr e in
      "EUnOp(" ^ uop_str ^ ", " ^ e_str ^ ")"
  | ECall(id, expr_l) ->
    let id_str = p_ident id in
    let expr_l_str = p_expr_l expr_l in
      "ECall(" ^ id_str ^ ", " ^ expr_l_str ^ ")"
    
let rec p_param_l = function
  | [] -> ""
  | ((t, id)::tl) ->
    let t_str = p_typ t in
    let id_str = p_ident id in
    "(" ^ t_str ^ ", " ^ id_str ^ ")" ^ p_param_l tl

let p_global = function
  | GFuncDecl(t, id, param_l) ->
    let t_str = p_typ t in
    let id_str = p_ident id in
    let param_l_str = p_param_l param_l in
      "GFuncDecl(" ^ t_str ^ ", \"" ^ id_str ^ "\" {" ^ param_l_str ^ "})"
  | GFuncDef(t, id, param_l, stmt) ->
    let t_str = p_typ t in
    let id_str = p_ident id in
    let param_l_str = p_param_l param_l in
    let stmt_str = p_stmt stmt in
      "GFuncDef(" ^ t_str  ^ ", \"" ^ id_str ^ "\" {" ^ param_l_str  ^ "}" ^ stmt_str  ^ ")"
  (* | GVarDef(...) *)
  (* | GVarDecl(...) *)
    
let rec p_prog = function
  | Prog(g_list) ->
    let rec work = function
      | [] -> ""
      | (hd::tl) ->
        p_global hd ^ "\n\n" ^ work tl
    in print_endline (work g_list)