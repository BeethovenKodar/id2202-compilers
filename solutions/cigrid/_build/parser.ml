
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = Token.token
  
end

include MenhirBasics

# 2 "parser.mly"
  
  open Ast_types
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let parse_error exit_code msg =
    let () = Printf.printf ("%s at --> exit %d\n") msg exit_code in
      exit exit_code

# 27 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_program) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: program. *)

  | MenhirState007 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 007.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState010 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 010.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState015 : ((('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_state
    (** State 015.
        Stack shape : typ IDENT params.
        Start symbol: program. *)

  | MenhirState017 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 017.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState021 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 021.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState023 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 023.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState026 : (('s, _menhir_box_program) _menhir_cell1_unop, _menhir_box_program) _menhir_state
    (** State 026.
        Stack shape : unop.
        Start symbol: program. *)

  | MenhirState028 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 028.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState030 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 030.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState032 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 032.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState034 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState036 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 036.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState038 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 038.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState040 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 040.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState042 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 042.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState044 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 044.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState046 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 046.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState048 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 048.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState050 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 050.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState052 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 052.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState054 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 054.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState056 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 056.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState062 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 062.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState067 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 067.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState068 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 068.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState072 : (('s, _menhir_box_program) _menhir_cell1_LCURLY, _menhir_box_program) _menhir_state
    (** State 072.
        Stack shape : LCURLY.
        Start symbol: program. *)

  | MenhirState074 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 074.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState076 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 076.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState078 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 078.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState087 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 087.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState090 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 090.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState094 : (('s, _menhir_box_program) _menhir_cell1_lvalue, _menhir_box_program) _menhir_state
    (** State 094.
        Stack shape : lvalue.
        Start symbol: program. *)

  | MenhirState098 : (('s, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 098.
        Stack shape : stmt.
        Start symbol: program. *)

  | MenhirState109 : (('s, _menhir_box_program) _menhir_cell1_global, _menhir_box_program) _menhir_state
    (** State 109.
        Stack shape : global.
        Start symbol: program. *)


and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast_types.expression)

and ('s, 'r) _menhir_cell1_global = 
  | MenhirCell1_global of 's * ('s, 'r) _menhir_state * (Ast_types.g)

and ('s, 'r) _menhir_cell1_lvalue = 
  | MenhirCell1_lvalue of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_params = 
  | MenhirCell1_params of 's * ('s, 'r) _menhir_state * ((Ast_types.t * string) list)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast_types.statement)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast_types.t)

and ('s, 'r) _menhir_cell1_unop = 
  | MenhirCell1_unop of 's * ('s, 'r) _menhir_state * (Ast_types.uop)

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 29 "parser.mly"
       (string)
# 231 "parser.ml"
)

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 29 "parser.mly"
       (string)
# 238 "parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LCURLY = 
  | MenhirCell1_LCURLY of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (Ast_types.p) [@@unboxed]

let _menhir_action_01 =
  fun i xs ->
    let e_list = 
# 229 "<standard.mly>"
    ( xs )
# 264 "parser.ml"
     in
    (
# 160 "parser.mly"
                                                                    ( SExpr(ECall(i, e_list)) )
# 269 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_02 =
  fun e e_var ->
    (
# 161 "parser.mly"
                                     ( SVarAssign(e_var, e) )
# 277 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_03 =
  fun ident ->
    (
# 162 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopAdd, EVar(ident), EInt(1))) )
# 285 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_04 =
  fun ident ->
    (
# 163 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopSub, EVar(ident), EInt(1))) )
# 293 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_05 =
  fun str ->
    (
# 111 "parser.mly"
                ( EVar(str) )
# 301 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_06 =
  fun num ->
    (
# 112 "parser.mly"
                 ( EInt(num) )
# 309 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_07 =
  fun c ->
    (
# 113 "parser.mly"
             ( EChar(c) )
# 317 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_08 =
  fun e1 e2 ->
    (
# 115 "parser.mly"
                              ( EBinOp(BopMul, e1, e2) )
# 325 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_09 =
  fun e1 e2 ->
    (
# 116 "parser.mly"
                              ( EBinOp(BopDiv, e1, e2) )
# 333 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_10 =
  fun e1 e2 ->
    (
# 117 "parser.mly"
                              ( EBinOp(BopMod, e1, e2) )
# 341 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_11 =
  fun e1 e2 ->
    (
# 118 "parser.mly"
                              ( EBinOp(BopAdd, e1, e2) )
# 349 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_12 =
  fun e1 e2 ->
    (
# 119 "parser.mly"
                              ( EBinOp(BopSub, e1, e2) )
# 357 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_13 =
  fun e1 e2 ->
    (
# 120 "parser.mly"
                             ( EBinOp(BopLt, e1, e2) )
# 365 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_14 =
  fun e1 e2 ->
    (
# 121 "parser.mly"
                             ( EBinOp(BopGt, e1, e2) )
# 373 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_15 =
  fun e1 e2 ->
    (
# 122 "parser.mly"
                               ( EBinOp(BopLteq, e1, e2) )
# 381 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_16 =
  fun e1 e2 ->
    (
# 123 "parser.mly"
                               ( EBinOp(BopGteq, e1, e2) )
# 389 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_17 =
  fun e1 e2 ->
    (
# 124 "parser.mly"
                             ( EBinOp(BopEqto, e1, e2) )
# 397 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_18 =
  fun e1 e2 ->
    (
# 125 "parser.mly"
                              ( EBinOp(BopNeq, e1, e2) )
# 405 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_19 =
  fun e1 e2 ->
    (
# 126 "parser.mly"
                                 ( EBinOp(BopBitAnd, e1, e2) )
# 413 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_20 =
  fun e1 e2 ->
    (
# 127 "parser.mly"
                                ( EBinOp(BopBitOr, e1, e2) )
# 421 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_21 =
  fun e1 e2 ->
    (
# 128 "parser.mly"
                              ( EBinOp(BopAnd, e1, e2) )
# 429 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_22 =
  fun e1 e2 ->
    (
# 129 "parser.mly"
                             ( EBinOp(BopOr, e1, e2) )
# 437 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_23 =
  fun e uop ->
    (
# 130 "parser.mly"
                         ( EUnOp(uop, e) )
# 445 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_24 =
  fun i xs ->
    let e_list = 
# 229 "<standard.mly>"
    ( xs )
# 453 "parser.ml"
     in
    (
# 132 "parser.mly"
                                                                    ( ECall(i, e_list) )
# 458 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_25 =
  fun e ->
    (
# 135 "parser.mly"
                             ( e )
# 466 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_26 =
  fun i p stmt_list t ->
    (
# 174 "parser.mly"
    ( GFuncDef(t, i, p, SScope(stmt_list)) )
# 474 "parser.ml"
     : (Ast_types.g))

let _menhir_action_27 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 482 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_28 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 490 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_29 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 498 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_30 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 506 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_31 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 514 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_32 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 522 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_33 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 530 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_34 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 538 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_35 =
  fun str ->
    (
# 156 "parser.mly"
                ( str )
# 546 "parser.ml"
     : (string))

let _menhir_action_36 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 554 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_37 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 562 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_38 =
  fun xs ->
    let p_list = 
# 229 "<standard.mly>"
    ( xs )
# 570 "parser.ml"
     in
    (
# 170 "parser.mly"
                                                     ( p_list )
# 575 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_39 =
  fun ast ->
    (
# 79 "parser.mly"
                       ( Prog(ast) )
# 583 "parser.ml"
     : (Ast_types.p))

let _menhir_action_40 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 591 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_41 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 599 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_42 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 607 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 612 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_43 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 620 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 625 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_44 =
  fun var_assign ->
    (
# 138 "parser.mly"
                                      ( var_assign )
# 633 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_45 =
  fun stmt_list ->
    (
# 139 "parser.mly"
                                      ( SScope(stmt_list) )
# 641 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_46 =
  fun e else_s if_s ->
    (
# 141 "parser.mly"
    ( SIf(e, if_s, Some else_s) )
# 649 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_47 =
  fun e if_s ->
    (
# 143 "parser.mly"
    ( SIf(e, if_s, None) )
# 657 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_48 =
  fun e s ->
    (
# 144 "parser.mly"
                                              ( SWhile(e, s) )
# 665 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_49 =
  fun () ->
    (
# 145 "parser.mly"
                      ( SBreak )
# 673 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_50 =
  fun e ->
    (
# 147 "parser.mly"
  ( 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  )
# 685 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_51 =
  fun () ->
    (
# 104 "parser.mly"
          ( TVoid )
# 693 "parser.ml"
     : (Ast_types.t))

let _menhir_action_52 =
  fun () ->
    (
# 105 "parser.mly"
          ( TInt )
# 701 "parser.ml"
     : (Ast_types.t))

let _menhir_action_53 =
  fun () ->
    (
# 106 "parser.mly"
          ( TChar )
# 709 "parser.ml"
     : (Ast_types.t))

let _menhir_action_54 =
  fun str ->
    (
# 107 "parser.mly"
                ( TIdent(str) )
# 717 "parser.ml"
     : (Ast_types.t))

let _menhir_action_55 =
  fun () ->
    (
# 82 "parser.mly"
         ( UnopNot )
# 725 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_56 =
  fun () ->
    (
# 83 "parser.mly"
           ( UnopTilde )
# 733 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_57 =
  fun () ->
    (
# 84 "parser.mly"
            ( UnopMinus )
# 741 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_58 =
  fun e i t ->
    (
# 166 "parser.mly"
                                         ( SVarDef(t, i, e) )
# 749 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_59 =
  fun a ->
    (
# 167 "parser.mly"
               ( a )
# 757 "parser.ml"
     : (Ast_types.statement))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | Token.ADD ->
        "ADD"
    | Token.ADDSUGAR ->
        "ADDSUGAR"
    | Token.AND ->
        "AND"
    | Token.ASSIGN ->
        "ASSIGN"
    | Token.BITAND ->
        "BITAND"
    | Token.BITOR ->
        "BITOR"
    | Token.BREAK ->
        "BREAK"
    | Token.CHAR _ ->
        "CHAR"
    | Token.COMMA ->
        "COMMA"
    | Token.DECINT _ ->
        "DECINT"
    | Token.DIV ->
        "DIV"
    | Token.ELSE ->
        "ELSE"
    | Token.EOF ->
        "EOF"
    | Token.EQ ->
        "EQ"
    | Token.GT ->
        "GT"
    | Token.GTEQ ->
        "GTEQ"
    | Token.IDENT _ ->
        "IDENT"
    | Token.IF ->
        "IF"
    | Token.LCURLY ->
        "LCURLY"
    | Token.LPAREN ->
        "LPAREN"
    | Token.LT ->
        "LT"
    | Token.LTEQ ->
        "LTEQ"
    | Token.MOD ->
        "MOD"
    | Token.MUL ->
        "MUL"
    | Token.NEQ ->
        "NEQ"
    | Token.NOT ->
        "NOT"
    | Token.OR ->
        "OR"
    | Token.RCURLY ->
        "RCURLY"
    | Token.RETURN ->
        "RETURN"
    | Token.RPAREN ->
        "RPAREN"
    | Token.SEMICOLON ->
        "SEMICOLON"
    | Token.SUB ->
        "SUB"
    | Token.SUBSUGAR ->
        "SUBSUGAR"
    | Token.TCHAR ->
        "TCHAR"
    | Token.TILDE ->
        "TILDE"
    | Token.TINT ->
        "TINT"
    | Token.TVOID ->
        "TVOID"
    | Token.UMINUS ->
        "UMINUS"
    | Token.WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_107 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let ast = _v in
      let _v = _menhir_action_39 ast in
      MenhirBox_program _v
  
  let rec _menhir_run_110 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_global -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_global (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_28 x xs in
      _menhir_goto_list_global_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_global_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState109 ->
          _menhir_run_110 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_107 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.LPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Token.TVOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_51 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_52 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_54 str in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
              | Token.RPAREN ->
                  let _v = _menhir_action_33 () in
                  _menhir_run_105_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.COMMA ->
              let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Token.TVOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_51 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_52 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_54 str in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
              | _ ->
                  _eRR ())
          | Token.RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_42 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState007 ->
          _menhir_run_012_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState010 ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_012_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_34 x in
      _menhir_run_105_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_105_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_38 xs
      in
      let _menhir_stack = MenhirCell1_params (_menhir_stack, MenhirState007, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LCURLY ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_51 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
          | Token.RETURN ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | Token.LCURLY ->
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | Token.IF ->
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | Token.IDENT _v_3 ->
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState015
          | Token.BREAK ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
          | Token.RCURLY ->
              let _v = _menhir_action_29 () in
              _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
          | Token.LPAREN ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
          | Token.IDENT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_06 num in
              _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_07 c in
              _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unop (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | Token.IDENT _v_3 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState026
      | Token.DECINT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v_4 in
          let _v = _menhir_action_06 num in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | Token.CHAR _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v_6 in
          let _v = _menhir_action_07 c in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.LPAREN ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.IDENT _v_3 ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState023
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_31 () in
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.DIV | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.MOD | Token.MUL | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let str = _v in
          let _v = _menhir_action_05 str in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | Token.LPAREN ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | Token.IDENT _v_3 ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState062
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
          | _ ->
              _eRR ())
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let x = _v in
          let _v = _menhir_action_40 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_12 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_08 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState094 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState030 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell1_lvalue (_menhir_stack, _menhir_s, e_var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_02 e e_var in
          _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_22 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_18 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_10 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_040 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_15 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_09 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_11 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_13 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_16 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_17 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITOR | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_20 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_19 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_21 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_assign : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let a = _v in
      let _v = _menhir_action_59 a in
      _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_varassign : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let var_assign = _v in
          let _v = _menhir_action_44 var_assign in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState067 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState015 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState076 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_102 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_48 e s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
      | Token.RETURN ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Token.LCURLY ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Token.IF ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Token.IDENT _v_3 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState098
      | Token.BREAK ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Token.RCURLY ->
          let _v = _menhir_action_29 () in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.ASSIGN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Token.UMINUS ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_55 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
              | Token.LPAREN ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
              | Token.IDENT _v_4 ->
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState087
              | Token.DECINT _v_5 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_5 in
                  let _v = _menhir_action_06 num in
                  _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
              | Token.CHAR _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_7 in
                  let _v = _menhir_action_07 c in
                  _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_58 e i t in
          _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Token.LPAREN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | Token.IDENT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Token.SEMICOLON ->
          let _v = _menhir_action_36 () in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let x = _v in
          let _v = _menhir_action_37 x in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_50 e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_072 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LCURLY (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | Token.RETURN ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Token.LCURLY ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Token.IF ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Token.IDENT _v ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072
      | Token.BREAK ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Token.RCURLY ->
          let _v = _menhir_action_29 () in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | Token.LPAREN ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | Token.IDENT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_06 num in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_07 c in
              _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_51 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
          | Token.RETURN ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | Token.LCURLY ->
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | Token.IF ->
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | Token.IDENT _v_3 ->
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState076
          | Token.BREAK ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | Token.LPAREN ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
          | Token.IDENT _v_3 ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState078
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_31 () in
              _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Token.ADDSUGAR | Token.ASSIGN | Token.SUBSUGAR ->
          let str = _v in
          let _v = _menhir_action_35 str in
          (match (_tok : MenhirBasics.token) with
          | Token.SUBSUGAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let ident = _v in
              let _v = _menhir_action_04 ident in
              _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | Token.ASSIGN ->
              let _menhir_stack = MenhirCell1_lvalue (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Token.UMINUS ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_55 () in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
              | Token.LPAREN ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
              | Token.IDENT _v_3 ->
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState094
              | Token.DECINT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_4 in
                  let _v = _menhir_action_06 num in
                  _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
              | Token.CHAR _v_6 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_6 in
                  let _v = _menhir_action_07 c in
                  _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
              | _ ->
                  _eRR ())
          | Token.ADDSUGAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let ident = _v in
              let _v = _menhir_action_03 ident in
              _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _menhir_fail ())
      | Token.IDENT _ ->
          let str = _v in
          let _v = _menhir_action_54 str in
          _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_01 i xs in
      _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState015 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_081 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_49 () in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LCURLY -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LCURLY (_menhir_stack, _menhir_s) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_45 stmt_list in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_099 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_30 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState015 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState072 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_103 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_26 i p stmt_list t in
      let _menhir_stack = MenhirCell1_global (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState109 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState109 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState109 _tok
      | Token.IDENT _v_3 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v_3 in
          let _v = _menhir_action_54 str in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState109 _tok
      | Token.EOF ->
          let _v = _menhir_action_27 () in
          _menhir_run_110 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, if_s) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let else_s = _v in
      let _v = _menhir_action_46 e else_s if_s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_089 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.ELSE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_51 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090 _tok
          | Token.RETURN ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | Token.LCURLY ->
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | Token.IF ->
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | Token.IDENT _v_3 ->
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState090
          | Token.BREAK ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | _ ->
              _eRR ())
      | Token.BREAK | Token.IDENT _ | Token.IF | Token.LCURLY | Token.RCURLY | Token.RETURN | Token.TCHAR | Token.TINT | Token.TVOID | Token.WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let if_s = _v in
          let _v = _menhir_action_47 e if_s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_51 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
          | Token.RETURN ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | Token.LCURLY ->
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | Token.IF ->
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | Token.IDENT _v_3 ->
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState067
          | Token.BREAK ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_25 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_unop as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_unop (_menhir_stack, _menhir_s, uop) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_23 e uop in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState078 ->
          _menhir_run_058_spec_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState023 ->
          _menhir_run_058_spec_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_063 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_41 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_058_spec_078 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_32 x in
      _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_058_spec_023 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_32 x in
      _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_24 i xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_43 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v in
          let _v = _menhir_action_54 str in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.EOF ->
          let _v = _menhir_action_27 () in
          _menhir_run_107 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
