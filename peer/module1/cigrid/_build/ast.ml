open Printf
type uop = UExclam | UWiggle | UMin

type bop = BPlus | BMin | BStar | BSlash | BPerc | BLess | BMore | BLEQ | BGEQ | BEQ | BNEQ | BBinAND | BBinOR | BAND | BOR | BLShift | BRShift 

type exprType = TVoid | TInt | TChar | TIdent of string | TPoint of exprType

type expr = 
        | EVar of string (*name of variable*)
        | EInt of int
        | EChar of char
        | EString of string
        | EBinOp of bop * expr * expr
        | EUnOp of uop * expr 
        | ECall of string * (expr list)
        | ENew of exprType * expr
        | EArrayAccess of string * expr * (string option)

type statement = 
        | SExpr of expr
        | SVarDef of exprType * string * expr
        | SVarAssign of string * expr
        | SArrayAssign of string * expr * string option * expr
        | SScope of statement list
        | SIf of expr * statement * statement option
        | SWhile of expr * statement
        | SBreak
        | SReturn of expr option
        | SDelete of string

type global =
        | GFuncDef of exprType * string * ((exprType * string) list) * statement
        | GFuncDecl of exprType * string * ((exprType * string) list) 
        | GVarDef of exprType * string * expr
        | GVarDecl of exprType * string
        | GStruct of string * ((exprType * string) list)

type program =
        Prog of (global list)


let pprint_bop = function
  | BPlus -> "+"
  | BMin -> "-"
  | BStar -> "*"
  | BSlash -> "/"
  | BPerc  -> "%"
  | BLess -> "<"
  | BMore -> ">"
  | BLEQ -> "<="
  | BGEQ -> ">="
  | BEQ -> "=="
  | BNEQ -> "!="
  | BBinAND -> "&"
  | BBinOR -> "|"
  | BAND -> "&&"
  | BOR -> "||"
  | BLShift -> "<<"
  | BRShift -> ">>"


let pprint_uop = function
  | UMin -> "-"
  | UExclam -> "!" 
  | UWiggle -> "~"

let rec pprint_type = function
  | TVoid -> "TVoid"
  | TInt -> "TInt"
  | TChar -> "TChar"
  | TIdent(r) -> sprintf "TIdent(\"%s\")" r
  | TPoint(t) -> sprintf "TPoint(%s)" (pprint_type t)

let pprint_char = function
  | '\\' -> "\\\\"
  | '\t' -> "\\t"
  | '\n' -> "\\n"
  | '\'' -> "\\'"
  | '"' -> "\\\""
  | c -> sprintf "%c" c

let surround r =
        "\"" ^ r ^ "\""
let pprint_param x = let (t, i) = x in
        "("^ pprint_type t ^ "," ^ (surround i) ^")"

let pprint_params l =
        String.concat " " (List.map pprint_param l)

let rec pprint_expr_list = function 
  | x :: xs -> (pprint_expr x) ^ ", " ^ (pprint_expr_list xs)
  | [] -> ""

and pprint_expr = function
  | EVar(x) -> "EVar(" ^ (surround x) ^ ")"
  | EInt(i) -> sprintf "EInt(%d)" i
  | EChar(c) -> sprintf "EChar('%s')" (pprint_char c)
  | EString(s) -> "EString(" ^ s ^ ")"
  | EBinOp(bop, e1, e2) ->
     "EBinOp(" ^ pprint_bop bop ^ ", " ^ pprint_expr e1 ^ ", " ^ pprint_expr e2 ^ ")"
  | EUnOp(uop, e) ->
     "EUnOp(" ^ pprint_uop uop ^ ", " ^ pprint_expr e ^ ")"
  | ECall(r, e) -> (
                  let str = String.concat " " (List.map pprint_expr e) in
                  "ECall("^ surround r ^ ",{" ^ str ^ "})"
  )
  | ENew(t, e) -> sprintf "ENew(%s, %s)" (pprint_type t) (pprint_expr e)
  | EArrayAccess(r, e, rop) -> (
                          match rop with 
                          | Some(attr) -> sprintf "EArrayAccess(%s, %s, %s)" (surround r) (pprint_expr e) attr 
                          | None -> sprintf "EArrayAccess(%s, %s)" (surround r) (pprint_expr e) 
  ) 

 and pprint_statement = function
         | SExpr(e) -> sprintf "SExpr(%s)" (pprint_expr e)
         | SVarDef(t, r, e) -> "SVarDef(" ^ pprint_type t ^ ", " ^ (surround r) ^ ", " ^ pprint_expr e ^ ")"
         | SVarAssign(r, e) -> "SVarAssign(" ^(surround r )^ ", " ^ (pprint_expr e) ^ ")"
         | SArrayAssign(name, index, op, new_val) -> (
                match op with
                | Some(attr) -> sprintf "SArrayAssign(%s, %s, %s, %s)" name (pprint_expr index) attr (pprint_expr new_val)
                | None ->  sprintf "SArrayAssign(%s, %s, %s)" name (pprint_expr index) (pprint_expr new_val)
         ) 
         | SScope(l) -> sprintf "SScope({%s})" (String.concat " " (List.map pprint_statement l))
         | SIf(e, s, sopt) -> (match sopt with
                 | Some(el) -> "SIf(" ^ (pprint_expr e) ^ ", " ^(pprint_statement s) ^ ", " ^ (pprint_statement el) ^ ")"
                 | None -> "SIf(" ^ (pprint_expr e) ^ ", " ^(pprint_statement s) ^ ",)"
         )
         | SWhile(e, s) -> sprintf "SWhile(%s, %s)" (pprint_expr e) (pprint_statement s)
         | SBreak -> "SBreak"
         | SReturn(e) -> ( match e with
                 | Some(retval) -> sprintf "SReturn(%s)" (pprint_expr retval)    
                 | None -> "SReturn()" 
         ) 
         | SDelete(r) -> sprintf "SDelete(%s)" r

and pprint_global = function
         | GFuncDef(t, r, l, s) -> sprintf "GFuncDef(%s, %s, {%s}, %s)" (pprint_type t) (surround r) (pprint_params l) (pprint_statement s)
         | GFuncDecl(t, r, l) -> sprintf "GFuncDecl(%s, %s, {%s})" (pprint_type t) (surround r) (pprint_params l)
         | GVarDef(t, r, e) -> sprintf "GVarDef(%s, %s, %s)" (pprint_type t) (surround r) (pprint_expr e)
         | GVarDecl(t, r) -> sprintf "GVarDec(%s, %s)" (pprint_type t) r
         | GStruct(r, l) -> sprintf "GStruct(%s, {%s})" (surround r) (pprint_params l)

and pprint_program globals =
        sprintf "%s" (String.concat "\n\n" (List.map pprint_global globals))
