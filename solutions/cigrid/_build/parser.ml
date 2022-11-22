
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

  | MenhirState005 : (('s, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_state
    (** State 005.
        Stack shape : EXTERN.
        Start symbol: program. *)

  | MenhirState008 : ((('s, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 008.
        Stack shape : EXTERN typ IDENT.
        Start symbol: program. *)

  | MenhirState011 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 011.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState020 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 020.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState023 : ((('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_state
    (** State 023.
        Stack shape : typ IDENT params.
        Start symbol: program. *)

  | MenhirState025 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 025.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState029 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 029.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState031 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 031.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState034 : (('s, _menhir_box_program) _menhir_cell1_unop, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : unop.
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

  | MenhirState058 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 058.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState060 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 060.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState062 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 062.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState064 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 064.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState070 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 070.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState075 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 075.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState076 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 076.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState080 : (('s, _menhir_box_program) _menhir_cell1_LCURLY, _menhir_box_program) _menhir_state
    (** State 080.
        Stack shape : LCURLY.
        Start symbol: program. *)

  | MenhirState082 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 082.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState084 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 084.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState086 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 086.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState095 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 095.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState098 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 098.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState102 : (('s, _menhir_box_program) _menhir_cell1_lvalue, _menhir_box_program) _menhir_state
    (** State 102.
        Stack shape : lvalue.
        Start symbol: program. *)

  | MenhirState106 : (('s, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 106.
        Stack shape : stmt.
        Start symbol: program. *)

  | MenhirState116 : (('s, _menhir_box_program) _menhir_cell1_global, _menhir_box_program) _menhir_state
    (** State 116.
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

and ('s, 'r) _menhir_cell1_EXTERN = 
  | MenhirCell1_EXTERN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 29 "parser.mly"
       (string)
# 244 "parser.ml"
)

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 29 "parser.mly"
       (string)
# 251 "parser.ml"
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
# 277 "parser.ml"
     in
    (
# 160 "parser.mly"
                                                                    ( SExpr(ECall(i, e_list)) )
# 282 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_02 =
  fun e e_var ->
    (
# 161 "parser.mly"
                                     ( SVarAssign(e_var, e) )
# 290 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_03 =
  fun ident ->
    (
# 162 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopAdd, EVar(ident), EInt(1))) )
# 298 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_04 =
  fun ident ->
    (
# 163 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopSub, EVar(ident), EInt(1))) )
# 306 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_05 =
  fun str ->
    (
# 111 "parser.mly"
                ( EVar(str) )
# 314 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_06 =
  fun num ->
    (
# 112 "parser.mly"
                 ( EInt(num) )
# 322 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_07 =
  fun c ->
    (
# 113 "parser.mly"
             ( EChar(c) )
# 330 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_08 =
  fun e1 e2 ->
    (
# 115 "parser.mly"
                              ( EBinOp(BopMul, e1, e2) )
# 338 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_09 =
  fun e1 e2 ->
    (
# 116 "parser.mly"
                              ( EBinOp(BopDiv, e1, e2) )
# 346 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_10 =
  fun e1 e2 ->
    (
# 117 "parser.mly"
                              ( EBinOp(BopMod, e1, e2) )
# 354 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_11 =
  fun e1 e2 ->
    (
# 118 "parser.mly"
                              ( EBinOp(BopAdd, e1, e2) )
# 362 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_12 =
  fun e1 e2 ->
    (
# 119 "parser.mly"
                              ( EBinOp(BopSub, e1, e2) )
# 370 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_13 =
  fun e1 e2 ->
    (
# 120 "parser.mly"
                             ( EBinOp(BopLt, e1, e2) )
# 378 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_14 =
  fun e1 e2 ->
    (
# 121 "parser.mly"
                             ( EBinOp(BopGt, e1, e2) )
# 386 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_15 =
  fun e1 e2 ->
    (
# 122 "parser.mly"
                               ( EBinOp(BopLteq, e1, e2) )
# 394 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_16 =
  fun e1 e2 ->
    (
# 123 "parser.mly"
                               ( EBinOp(BopGteq, e1, e2) )
# 402 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_17 =
  fun e1 e2 ->
    (
# 124 "parser.mly"
                             ( EBinOp(BopEqto, e1, e2) )
# 410 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_18 =
  fun e1 e2 ->
    (
# 125 "parser.mly"
                              ( EBinOp(BopNeq, e1, e2) )
# 418 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_19 =
  fun e1 e2 ->
    (
# 126 "parser.mly"
                                 ( EBinOp(BopBitAnd, e1, e2) )
# 426 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_20 =
  fun e1 e2 ->
    (
# 127 "parser.mly"
                                ( EBinOp(BopBitOr, e1, e2) )
# 434 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_21 =
  fun e1 e2 ->
    (
# 128 "parser.mly"
                              ( EBinOp(BopAnd, e1, e2) )
# 442 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_22 =
  fun e1 e2 ->
    (
# 129 "parser.mly"
                             ( EBinOp(BopOr, e1, e2) )
# 450 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_23 =
  fun e uop ->
    (
# 130 "parser.mly"
                         ( EUnOp(uop, e) )
# 458 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_24 =
  fun i xs ->
    let e_list = 
# 229 "<standard.mly>"
    ( xs )
# 466 "parser.ml"
     in
    (
# 132 "parser.mly"
                                                                    ( ECall(i, e_list) )
# 471 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_25 =
  fun e ->
    (
# 135 "parser.mly"
                             ( e )
# 479 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_26 =
  fun i p stmt_list t ->
    (
# 174 "parser.mly"
    ( GFuncDef(t, i, p, SScope(stmt_list)) )
# 487 "parser.ml"
     : (Ast_types.g))

let _menhir_action_27 =
  fun i p t ->
    (
# 176 "parser.mly"
    ( GFuncDecl(t, i, p) )
# 495 "parser.ml"
     : (Ast_types.g))

let _menhir_action_28 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 503 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_29 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 511 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_30 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 519 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_31 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 527 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_32 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 535 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_33 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 543 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_34 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 551 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_35 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 559 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_36 =
  fun str ->
    (
# 156 "parser.mly"
                ( str )
# 567 "parser.ml"
     : (string))

let _menhir_action_37 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 575 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_38 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 583 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_39 =
  fun xs ->
    let p_list = 
# 229 "<standard.mly>"
    ( xs )
# 591 "parser.ml"
     in
    (
# 170 "parser.mly"
                                                     ( p_list )
# 596 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_40 =
  fun ast ->
    (
# 79 "parser.mly"
                       ( Prog(ast) )
# 604 "parser.ml"
     : (Ast_types.p))

let _menhir_action_41 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 612 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_42 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 620 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_43 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 628 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 633 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_44 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 641 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 646 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_45 =
  fun var_assign ->
    (
# 138 "parser.mly"
                                      ( var_assign )
# 654 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_46 =
  fun stmt_list ->
    (
# 139 "parser.mly"
                                      ( SScope(stmt_list) )
# 662 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_47 =
  fun e else_s if_s ->
    (
# 141 "parser.mly"
    ( SIf(e, if_s, Some else_s) )
# 670 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_48 =
  fun e if_s ->
    (
# 143 "parser.mly"
    ( SIf(e, if_s, None) )
# 678 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_49 =
  fun e s ->
    (
# 144 "parser.mly"
                                              ( SWhile(e, s) )
# 686 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_50 =
  fun () ->
    (
# 145 "parser.mly"
                      ( SBreak )
# 694 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_51 =
  fun e ->
    (
# 147 "parser.mly"
  ( 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  )
# 706 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_52 =
  fun () ->
    (
# 104 "parser.mly"
          ( TVoid )
# 714 "parser.ml"
     : (Ast_types.t))

let _menhir_action_53 =
  fun () ->
    (
# 105 "parser.mly"
          ( TInt )
# 722 "parser.ml"
     : (Ast_types.t))

let _menhir_action_54 =
  fun () ->
    (
# 106 "parser.mly"
          ( TChar )
# 730 "parser.ml"
     : (Ast_types.t))

let _menhir_action_55 =
  fun str ->
    (
# 107 "parser.mly"
                ( TIdent(str) )
# 738 "parser.ml"
     : (Ast_types.t))

let _menhir_action_56 =
  fun () ->
    (
# 82 "parser.mly"
         ( UnopNot )
# 746 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_57 =
  fun () ->
    (
# 83 "parser.mly"
           ( UnopTilde )
# 754 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_58 =
  fun () ->
    (
# 84 "parser.mly"
            ( UnopMinus )
# 762 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_59 =
  fun e i t ->
    (
# 166 "parser.mly"
                                         ( SVarDef(t, i, e) )
# 770 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_60 =
  fun a ->
    (
# 167 "parser.mly"
               ( a )
# 778 "parser.ml"
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
    | Token.EXTERN ->
        "EXTERN"
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
  
  let rec _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let ast = _v in
      let _v = _menhir_action_40 ast in
      MenhirBox_program _v
  
  let rec _menhir_run_117 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_global -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_global (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_29 x xs in
      _menhir_goto_list_global_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_global_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_114 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  let _v = _menhir_action_52 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_54 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_55 str in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
              | Token.RPAREN ->
                  let _v = _menhir_action_34 () in
                  _menhir_run_017_spec_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  let _v = _menhir_action_52 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_54 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_55 str in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
              | _ ->
                  _eRR ())
          | Token.RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_43 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState020 ->
          _menhir_run_013_spec_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState008 ->
          _menhir_run_013_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState011 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_013_spec_020 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_35 x in
      _menhir_run_017_spec_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_017_spec_020 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_39 xs
      in
      let _menhir_stack = MenhirCell1_params (_menhir_stack, MenhirState020, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LCURLY ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
          | Token.RETURN ->
              _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.LCURLY ->
              _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.IF ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.IDENT _v_3 ->
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState023
          | Token.BREAK ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
          | Token.RCURLY ->
              let _v = _menhir_action_30 () in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025 _tok
          | Token.LPAREN ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | Token.IDENT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_06 num in
              _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_07 c in
              _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unop (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | Token.IDENT _v_3 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState034
      | Token.DECINT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v_4 in
          let _v = _menhir_action_06 num in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Token.CHAR _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v_6 in
          let _v = _menhir_action_07 c in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
          | Token.LPAREN ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Token.IDENT _v_3 ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState031
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_32 () in
              _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.DIV | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.MOD | Token.MUL | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let str = _v in
          let _v = _menhir_action_05 str in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | Token.LPAREN ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | Token.IDENT _v_3 ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState070
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
          | _ ->
              _eRR ())
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let x = _v in
          let _v = _menhir_action_41 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036
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
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_12 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState038
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_08 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
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
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_103 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell1_lvalue (_menhir_stack, _menhir_s, e_var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_02 e e_var in
          _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_22 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_18 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_10 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_15 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_09 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050
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
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_11 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_13 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_16 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056
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
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.EQ | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_17 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITOR | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_20 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.OR | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_19 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
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
      let _v = _menhir_action_60 a in
      _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_varassign : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let var_assign = _v in
          let _v = _menhir_action_45 var_assign in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState075 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState023 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState084 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_110 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_49 e s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_106 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | Token.RETURN ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Token.LCURLY ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Token.IF ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Token.IDENT _v_3 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState106
      | Token.BREAK ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Token.RCURLY ->
          let _v = _menhir_action_30 () in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  let _v = _menhir_action_58 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
              | Token.LPAREN ->
                  _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
              | Token.IDENT _v_4 ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState095
              | Token.DECINT _v_5 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_5 in
                  let _v = _menhir_action_06 num in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
              | Token.CHAR _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_7 in
                  let _v = _menhir_action_07 c in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_59 e i t in
          _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
      | Token.LPAREN ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | Token.IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_06 num in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_07 c in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState076 _tok
      | Token.SEMICOLON ->
          let _v = _menhir_action_37 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let x = _v in
          let _v = _menhir_action_38 x in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_51 e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LCURLY (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | Token.RETURN ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Token.LCURLY ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Token.IF ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Token.IDENT _v ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080
      | Token.BREAK ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | Token.RCURLY ->
          let _v = _menhir_action_30 () in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
          | Token.LPAREN ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
          | Token.IDENT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_06 num in
              _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_07 c in
              _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
          | Token.RETURN ->
              _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | Token.LCURLY ->
              _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | Token.IF ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | Token.IDENT _v_3 ->
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState084
          | Token.BREAK ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Token.LPAREN ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | Token.IDENT _v_3 ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState086
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_06 num in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_07 c in
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_32 () in
              _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Token.ADDSUGAR | Token.ASSIGN | Token.SUBSUGAR ->
          let str = _v in
          let _v = _menhir_action_36 str in
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
                  let _v = _menhir_action_58 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
              | Token.LPAREN ->
                  _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | Token.IDENT _v_3 ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState102
              | Token.DECINT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_4 in
                  let _v = _menhir_action_06 num in
                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
              | Token.CHAR _v_6 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_6 in
                  let _v = _menhir_action_07 c in
                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
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
          let _v = _menhir_action_55 str in
          _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_01 i xs in
      _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState023 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_006 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  let _v = _menhir_action_52 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_54 () in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_55 str in
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
              | Token.RPAREN ->
                  let _v = _menhir_action_34 () in
                  _menhir_run_017_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_017_spec_008 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_39 xs
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_EXTERN (_menhir_stack, _menhir_s) = _menhir_stack in
          let p = _v in
          let _v = _menhir_action_27 i p t in
          _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_global : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_global (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
      | Token.IDENT _v_3 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v_3 in
          let _v = _menhir_action_55 str in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
      | Token.EXTERN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | Token.EOF ->
          let _v = _menhir_action_28 () in
          _menhir_run_117 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTERN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005 _tok
      | Token.IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v in
          let _v = _menhir_action_55 str in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LCURLY -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LCURLY (_menhir_stack, _menhir_s) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_46 stmt_list in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_107 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_31 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState023 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState080 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_26 i p stmt_list t in
      _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_099 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, if_s) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let else_s = _v in
      let _v = _menhir_action_47 e else_s if_s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.ELSE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | Token.RETURN ->
              _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | Token.LCURLY ->
              _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | Token.IF ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | Token.IDENT _v_3 ->
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState098
          | Token.BREAK ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | _ ->
              _eRR ())
      | Token.BREAK | Token.IDENT _ | Token.IF | Token.LCURLY | Token.RCURLY | Token.RETURN | Token.TCHAR | Token.TINT | Token.TVOID | Token.WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let if_s = _v in
          let _v = _menhir_action_48 e if_s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
          | Token.RETURN ->
              _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | Token.LCURLY ->
              _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | Token.IF ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | Token.IDENT _v_3 ->
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState075
          | Token.BREAK ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_25 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_unop as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
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
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState086 ->
          _menhir_run_066_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState031 ->
          _menhir_run_066_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_071 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_42 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_066_spec_086 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_33 x in
      _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_066_spec_031 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_33 x in
      _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_067 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_24 i xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_013_spec_008 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_35 x in
      _menhir_run_017_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_012 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_44 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v in
          let _v = _menhir_action_55 str in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | Token.EXTERN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | Token.EOF ->
          let _v = _menhir_action_28 () in
          _menhir_run_114 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
