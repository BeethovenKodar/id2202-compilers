
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
  | MenhirState00 : ('s, _menhir_box_program) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: program. *)

  | MenhirState07 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 07.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState10 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 10.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState15 : ((('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_state
    (** State 15.
        Stack shape : typ IDENT params.
        Start symbol: program. *)

  | MenhirState17 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 17.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState21 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 21.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState23 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 23.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState26 : (('s, _menhir_box_program) _menhir_cell1_unop, _menhir_box_program) _menhir_state
    (** State 26.
        Stack shape : unop.
        Start symbol: program. *)

  | MenhirState43 : (('s, _menhir_box_program) _menhir_cell1_expr _menhir_cell0_binop, _menhir_box_program) _menhir_state
    (** State 43.
        Stack shape : expr binop.
        Start symbol: program. *)

  | MenhirState49 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 49.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState54 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 54.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState55 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 55.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState59 : (('s, _menhir_box_program) _menhir_cell1_LCURLY, _menhir_box_program) _menhir_state
    (** State 59.
        Stack shape : LCURLY.
        Start symbol: program. *)

  | MenhirState61 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 61.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState63 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 63.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState65 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 65.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState74 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 74.
        Stack shape : typ IDENT.
        Start symbol: program. *)

  | MenhirState77 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 77.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState81 : (('s, _menhir_box_program) _menhir_cell1_lvalue, _menhir_box_program) _menhir_state
    (** State 81.
        Stack shape : lvalue.
        Start symbol: program. *)

  | MenhirState85 : (('s, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 85.
        Stack shape : stmt.
        Start symbol: program. *)

  | MenhirState96 : (('s, _menhir_box_program) _menhir_cell1_global, _menhir_box_program) _menhir_state
    (** State 96.
        Stack shape : global.
        Start symbol: program. *)


and 's _menhir_cell0_binop = 
  | MenhirCell0_binop of 's * (Ast_types.bop)

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
# 164 "parser.ml"
)

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 29 "parser.mly"
       (string)
# 171 "parser.ml"
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
# 197 "parser.ml"
     in
    (
# 136 "parser.mly"
                                                                    ( SExpr(ECall(i, e_list)) )
# 202 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_02 =
  fun e e_var ->
    (
# 137 "parser.mly"
                                     ( SVarAssign(e_var, e) )
# 210 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_03 =
  fun ident ->
    (
# 138 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopAdd, EVar(ident), EInt(1))) )
# 218 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_04 =
  fun ident ->
    (
# 139 "parser.mly"
                             ( SVarAssign(ident, EBinOp(BopSub, EVar(ident), EInt(1))) )
# 226 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_05 =
  fun () ->
    (
# 78 "parser.mly"
         ( BopAdd )
# 234 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_06 =
  fun () ->
    (
# 79 "parser.mly"
         ( BopSub )
# 242 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_07 =
  fun () ->
    (
# 80 "parser.mly"
         ( BopMul )
# 250 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_08 =
  fun () ->
    (
# 81 "parser.mly"
         ( BopDiv )
# 258 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_09 =
  fun () ->
    (
# 82 "parser.mly"
         ( BopMod )
# 266 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_10 =
  fun () ->
    (
# 83 "parser.mly"
        ( BopLt )
# 274 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_11 =
  fun () ->
    (
# 84 "parser.mly"
        ( BopGt )
# 282 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_12 =
  fun () ->
    (
# 85 "parser.mly"
         ( BopLteq )
# 290 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_13 =
  fun () ->
    (
# 86 "parser.mly"
         ( BopGteq )
# 298 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_14 =
  fun () ->
    (
# 87 "parser.mly"
       ( BopEqto )
# 306 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_15 =
  fun () ->
    (
# 88 "parser.mly"
        ( BopNeq )
# 314 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_16 =
  fun () ->
    (
# 89 "parser.mly"
            ( BopBitAnd )
# 322 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_17 =
  fun () ->
    (
# 90 "parser.mly"
           ( BopBitOr )
# 330 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_18 =
  fun () ->
    (
# 91 "parser.mly"
        ( BopAnd )
# 338 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_19 =
  fun () ->
    (
# 92 "parser.mly"
       ( BopOr )
# 346 "parser.ml"
     : (Ast_types.bop))

let _menhir_action_20 =
  fun str ->
    (
# 102 "parser.mly"
                ( EVar(str) )
# 354 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_21 =
  fun num ->
    (
# 103 "parser.mly"
                 ( EInt(num) )
# 362 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_22 =
  fun c ->
    (
# 104 "parser.mly"
             ( EChar(c) )
# 370 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_23 =
  fun bop e1 e2 ->
    (
# 106 "parser.mly"
                                      ( EBinOp(bop, e1, e2) )
# 378 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_24 =
  fun e uop ->
    (
# 107 "parser.mly"
                         ( EUnOp(uop, e) )
# 386 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_25 =
  fun i xs ->
    let e_list = 
# 229 "<standard.mly>"
    ( xs )
# 394 "parser.ml"
     in
    (
# 109 "parser.mly"
                                                                    ( ECall(i, e_list) )
# 399 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_26 =
  fun e ->
    (
# 112 "parser.mly"
                             ( e )
# 407 "parser.ml"
     : (Ast_types.expression))

let _menhir_action_27 =
  fun i p stmt_list t ->
    (
# 150 "parser.mly"
    ( GFuncDef(t, i, p, SScope(stmt_list)) )
# 415 "parser.ml"
     : (Ast_types.g))

let _menhir_action_28 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 423 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_29 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 431 "parser.ml"
     : (Ast_types.g list))

let _menhir_action_30 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 439 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_31 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 447 "parser.ml"
     : (Ast_types.statement list))

let _menhir_action_32 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 455 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_33 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 463 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_34 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 471 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_35 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 479 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_36 =
  fun str ->
    (
# 132 "parser.mly"
                ( str )
# 487 "parser.ml"
     : (string))

let _menhir_action_37 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 495 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_38 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 503 "parser.ml"
     : (Ast_types.expression option))

let _menhir_action_39 =
  fun xs ->
    let p_list = 
# 229 "<standard.mly>"
    ( xs )
# 511 "parser.ml"
     in
    (
# 146 "parser.mly"
                                                     ( p_list )
# 516 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_40 =
  fun ast ->
    (
# 70 "parser.mly"
                       ( Prog(ast) )
# 524 "parser.ml"
     : (Ast_types.p))

let _menhir_action_41 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 532 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_42 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 540 "parser.ml"
     : (Ast_types.expression list))

let _menhir_action_43 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 548 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 553 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_44 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 561 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 566 "parser.ml"
     : ((Ast_types.t * string) list))

let _menhir_action_45 =
  fun var_assign ->
    (
# 115 "parser.mly"
                                      ( var_assign )
# 574 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_46 =
  fun stmt_list ->
    (
# 116 "parser.mly"
                                      ( SScope(stmt_list) )
# 582 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_47 =
  fun e else_s has_else if_s ->
    (
# 118 "parser.mly"
    ( SIf(e, if_s, Some else_s) )
# 590 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_48 =
  fun e if_s ->
    (
# 119 "parser.mly"
                                              ( SIf(e, if_s, None) )
# 598 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_49 =
  fun e s ->
    (
# 120 "parser.mly"
                                              ( SWhile(e, s) )
# 606 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_50 =
  fun () ->
    (
# 121 "parser.mly"
                      ( SBreak )
# 614 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_51 =
  fun e ->
    (
# 123 "parser.mly"
  ( 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  )
# 626 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_52 =
  fun () ->
    (
# 95 "parser.mly"
          ( TVoid )
# 634 "parser.ml"
     : (Ast_types.t))

let _menhir_action_53 =
  fun () ->
    (
# 96 "parser.mly"
          ( TInt )
# 642 "parser.ml"
     : (Ast_types.t))

let _menhir_action_54 =
  fun () ->
    (
# 97 "parser.mly"
          ( TChar )
# 650 "parser.ml"
     : (Ast_types.t))

let _menhir_action_55 =
  fun str ->
    (
# 98 "parser.mly"
                ( TIdent(str) )
# 658 "parser.ml"
     : (Ast_types.t))

let _menhir_action_56 =
  fun () ->
    (
# 73 "parser.mly"
         ( UnopNot )
# 666 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_57 =
  fun () ->
    (
# 74 "parser.mly"
           ( UnopTilde )
# 674 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_58 =
  fun () ->
    (
# 75 "parser.mly"
            ( UnopMinus )
# 682 "parser.ml"
     : (Ast_types.uop))

let _menhir_action_59 =
  fun e i t ->
    (
# 142 "parser.mly"
                                         ( SVarDef(t, i, e) )
# 690 "parser.ml"
     : (Ast_types.statement))

let _menhir_action_60 =
  fun a ->
    (
# 143 "parser.mly"
               ( a )
# 698 "parser.ml"
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
  
  let rec _menhir_run_94 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let ast = _v in
      let _v = _menhir_action_40 ast in
      MenhirBox_program _v
  
  let rec _menhir_run_97 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_global -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_global (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_29 x xs in
      _menhir_goto_list_global_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_global_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState96 ->
          _menhir_run_97 _menhir_stack _v
      | MenhirState00 ->
          _menhir_run_94 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_54 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_55 str in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | Token.RPAREN ->
                  let _v = _menhir_action_34 () in
                  _menhir_run_92_spec_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10 _tok
              | Token.TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_53 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10 _tok
              | Token.TCHAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_54 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10 _tok
              | Token.IDENT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let str = _v_4 in
                  let _v = _menhir_action_55 str in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10 _tok
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
      | MenhirState07 ->
          _menhir_run_12_spec_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState10 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_12_spec_07 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_35 x in
      _menhir_run_92_spec_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_92_spec_07 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_39 xs
      in
      let _menhir_stack = MenhirCell1_params (_menhir_stack, MenhirState07, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.LCURLY ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15 _tok
          | Token.RETURN ->
              _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | Token.LCURLY ->
              _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | Token.IF ->
              _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | Token.IDENT _v_3 ->
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState15
          | Token.BREAK ->
              _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | Token.RCURLY ->
              let _v = _menhir_action_30 () in
              _menhir_run_90 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
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
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17 _tok
          | Token.LPAREN ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
          | Token.IDENT _v ->
              _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_21 num in
              _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_22 c in
              _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unop (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26 _tok
      | Token.LPAREN ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | Token.IDENT _v_3 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState26
      | Token.DECINT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v_4 in
          let _v = _menhir_action_21 num in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26 _tok
      | Token.CHAR _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v_6 in
          let _v = _menhir_action_22 c in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
      | Token.LPAREN ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | Token.IDENT _v ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_21 num in
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_22 c in
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
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
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
          | Token.LPAREN ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
          | Token.IDENT _v_3 ->
              _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState23
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_21 num in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_22 c in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_32 () in
              _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Token.ADD | Token.AND | Token.BITAND | Token.BITOR | Token.COMMA | Token.DIV | Token.EQ | Token.GT | Token.GTEQ | Token.LT | Token.LTEQ | Token.MOD | Token.MUL | Token.NEQ | Token.OR | Token.RPAREN | Token.SEMICOLON | Token.SUB ->
          let str = _v in
          let _v = _menhir_action_20 str in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_48 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.UMINUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_58 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
          | Token.LPAREN ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
          | Token.IDENT _v_3 ->
              _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState49
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_21 num in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_22 c in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
          | _ ->
              _eRR ())
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let x = _v in
          let _v = _menhir_action_41 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_binop : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_binop (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
      | Token.LPAREN ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | Token.IDENT _v_3 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState43
      | Token.DECINT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v_4 in
          let _v = _menhir_action_21 num in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
      | Token.CHAR _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v_6 in
          let _v = _menhir_action_22 c in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr _menhir_cell0_binop as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell0_binop (_menhir_stack, bop) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_23 bop e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_29 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_19 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_15 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_31 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_07 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_32 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_09 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_33 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_34 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_10 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_35 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_13 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_36 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_11 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_37 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_14 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_38 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_08 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_39 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_17 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_40 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_16 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_41 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_18 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_42 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_binop _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState81 ->
          _menhir_run_82 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState74 ->
          _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState61 ->
          _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState55 ->
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState21 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState65 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState49 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState43 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_82 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell1_lvalue (_menhir_stack, _menhir_s, e_var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_02 e e_var in
          _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
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
      | MenhirState54 ->
          _menhir_run_89 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState15 ->
          _menhir_run_85 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState85 ->
          _menhir_run_85 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState59 ->
          _menhir_run_85 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState77 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState63 ->
          _menhir_run_76 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_89 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_49 e s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_85 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState85
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState85 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState85 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState85 _tok
      | Token.RETURN ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState85
      | Token.LCURLY ->
          _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState85
      | Token.IF ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState85
      | Token.IDENT _v_3 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState85
      | Token.BREAK ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState85
      | Token.RCURLY ->
          let _v = _menhir_action_30 () in
          _menhir_run_86 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_72 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
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
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState74 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState74 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState74 _tok
              | Token.LPAREN ->
                  _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
              | Token.IDENT _v_4 ->
                  _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState74
              | Token.DECINT _v_5 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_5 in
                  let _v = _menhir_action_21 num in
                  _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState74 _tok
              | Token.CHAR _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_7 in
                  let _v = _menhir_action_22 c in
                  _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState74 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_75 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_59 e i t in
          _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_55 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.UMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_58 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
      | Token.TILDE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_57 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
      | Token.NOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
      | Token.LPAREN ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | Token.IDENT _v ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55
      | Token.DECINT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let num = _v in
          let _v = _menhir_action_21 num in
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
      | Token.CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_22 c in
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
      | Token.SEMICOLON ->
          let _v = _menhir_action_37 () in
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_58 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.SEMICOLON ->
          let x = _v in
          let _v = _menhir_action_38 x in
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_56 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_51 e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_59 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LCURLY (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.WHILE ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState59 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState59 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState59 _tok
      | Token.RETURN ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | Token.LCURLY ->
          _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | Token.IF ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | Token.IDENT _v ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState59
      | Token.BREAK ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | Token.RCURLY ->
          let _v = _menhir_action_30 () in
          _menhir_run_87 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_60 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
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
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61 _tok
          | Token.LPAREN ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
          | Token.IDENT _v ->
              _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61
          | Token.DECINT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v in
              let _v = _menhir_action_21 num in
              _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61 _tok
          | Token.CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_22 c in
              _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState61 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_62 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState63 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState63 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState63 _tok
          | Token.RETURN ->
              _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
          | Token.LCURLY ->
              _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
          | Token.IF ->
              _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
          | Token.IDENT _v_3 ->
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState63
          | Token.BREAK ->
              _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_64 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
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
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState65 _tok
          | Token.TILDE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_57 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState65 _tok
          | Token.NOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_56 () in
              _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState65 _tok
          | Token.LPAREN ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | Token.IDENT _v_3 ->
              _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState65
          | Token.DECINT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let num = _v_4 in
              let _v = _menhir_action_21 num in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState65 _tok
          | Token.CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_22 c in
              _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState65 _tok
          | Token.RPAREN ->
              let _v = _menhir_action_32 () in
              _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v
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
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState81 _tok
              | Token.TILDE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_57 () in
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState81 _tok
              | Token.NOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_56 () in
                  _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState81 _tok
              | Token.LPAREN ->
                  _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState81
              | Token.IDENT _v_3 ->
                  _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState81
              | Token.DECINT _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let num = _v_4 in
                  let _v = _menhir_action_21 num in
                  _menhir_run_82 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState81 _tok
              | Token.CHAR _v_6 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_6 in
                  let _v = _menhir_action_22 c in
                  _menhir_run_82 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState81 _tok
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
  
  and _menhir_run_66 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_01 i xs in
      _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState15 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState85 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState59 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState77 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState63 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState96 ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_68 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_87 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LCURLY -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LCURLY (_menhir_stack, _menhir_s) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_46 stmt_list in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_86 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_31 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState15 ->
          _menhir_run_90 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState59 ->
          _menhir_run_87 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState85 ->
          _menhir_run_86 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_90 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let stmt_list = _v in
      let _v = _menhir_action_27 i p stmt_list t in
      let _menhir_stack = MenhirCell1_global (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState96 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState96 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState96 _tok
      | Token.IDENT _v_3 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v_3 in
          let _v = _menhir_action_55 str in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState96 _tok
      | Token.EOF ->
          let _v = _menhir_action_28 () in
          _menhir_run_97 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_78 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, if_s) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let (else_s, has_else) = (_v, ()) in
      let _v = _menhir_action_47 e else_s has_else if_s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_76 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.ELSE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState77 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState77 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState77 _tok
          | Token.RETURN ->
              _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
          | Token.LCURLY ->
              _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
          | Token.IF ->
              _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
          | Token.IDENT _v_3 ->
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState77
          | Token.BREAK ->
              _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
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
  
  and _menhir_run_53 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Token.WHILE ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | Token.TVOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState54 _tok
          | Token.TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState54 _tok
          | Token.TCHAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState54 _tok
          | Token.RETURN ->
              _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | Token.LCURLY ->
              _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | Token.IF ->
              _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | Token.IDENT _v_3 ->
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState54
          | Token.BREAK ->
              _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | _ ->
              _eRR ())
      | Token.OR ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_26 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_27 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_unop as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Token.SUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.BITAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.ADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Token.COMMA | Token.RPAREN | Token.SEMICOLON ->
          let MenhirCell1_unop (_menhir_stack, _menhir_s, uop) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_24 e uop in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState49 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState65 ->
          _menhir_run_45_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState23 ->
          _menhir_run_45_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_50 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_42 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_45_spec_65 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_33 x in
      _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_45_spec_23 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_33 x in
      _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_46 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_25 i xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_11 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_44 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_typ_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Token.TVOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | Token.TINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | Token.TCHAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | Token.IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let str = _v in
          let _v = _menhir_action_55 str in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | Token.EOF ->
          let _v = _menhir_action_28 () in
          _menhir_run_94 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
