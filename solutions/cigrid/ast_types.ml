
(* + - * / %  < > <= >= == !=  & | && || << >> *)
type bop = BopAdd 
  | BopSub 
  | BopMul 
  | BopDiv 
  | BopMod 
  | BopLt 
  | BopGt 
  | BopLteq 
  | BopGteq 
  | BopEqto 
  | BopNeq 
  | BopBitAnd 
  | BopBitOr 
  | BopAnd 
  | BopOr

(* ~ ! - *)
type uop = UnopTilde
  | UnopNot
  | UnopMinus
  
(* TVoid | TInt | TChar | TIdent(r) | TPoint(T) *)
type t = TVoid
  | TInt
  | TChar 
  | TIdent of string
  (* | TPoint of type, not s level *)
  
type expression = EVar of string
  | EInt of int
  | EChar of char
  (* | EString of string, not s level *)
  | EBinOp of bop * expression * expression
  | EUnOp of uop * expression
  | ECall of string * expression list
  (* | ENew of t * expression, not s level *)
  (* | EArrayAccess of string * expression * string option, not s level *)

type statement = SExpr of expression
  | SVarDef of t * string * expression
  | SVarAssign of string * expression
  | SArrayAssign of string * expression * string option * expression
  | SScope of statement list
  | SIf of expression * statement * statement option
  | SWhile of expression * statement
  | SBreak
  | SReturn of expression option
  (* | SDelete of string, not s level *)

type g = GFuncDef of t * string * (t * string) list * statement
  | GFuncDecl of t * string * (t * string) list 
  | GVarDef of t * string * expression
  | GVarDecl of t * string
  | GStruct of string * (t * string) list

type program = Prog of g list