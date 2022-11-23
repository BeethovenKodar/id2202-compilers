
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WIGGLE
    | WHILE
    | VOID
    | STRUCT
    | STAR
    | SMALLER
    | SLASH
    | SEMI
    | RSHIFT
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | POINT
    | PLUS
    | PERCENT
    | OR
    | NEQ
    | MIN
    | LSHIFT
    | LPAREN
    | LEQ
    | LBRACKET
    | LBRACE
    | INTTYPE
    | INT of (
# 7 "parser.mly"
       (int)
# 40 "parser.ml"
  )
    | IF
    | IDENT of (
# 10 "parser.mly"
       (string)
# 46 "parser.ml"
  )
    | GREATER
    | GEQ
    | EXTERN
    | EXCLAM
    | EQUAL
    | EOF
    | ELSE
    | DELETE
    | COMPARE
    | COMMA
    | CHARTYPE
    | CHAR of (
# 8 "parser.mly"
       (char)
# 62 "parser.ml"
  )
    | BREAK
    | BOR
    | BAND
    | AND
  
end

include MenhirBasics

# 2 "parser.mly"
  
   open Ast
   exception UnmatchingError

# 78 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_program) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: program. *)

  | MenhirState004 : (('s, _menhir_box_program) _menhir_cell1_STRUCT _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 004.
        Stack shape : STRUCT IDENT.
        Start symbol: program. *)

  | MenhirState012 : (('s, _menhir_box_program) _menhir_cell1_struct_elem, _menhir_box_program) _menhir_state
    (** State 012.
        Stack shape : struct_elem.
        Start symbol: program. *)

  | MenhirState017 : (('s, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_state
    (** State 017.
        Stack shape : EXTERN.
        Start symbol: program. *)

  | MenhirState021 : ((('s, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 021.
        Stack shape : EXTERN ty IDENT.
        Start symbol: program. *)

  | MenhirState026 : (('s, _menhir_box_program) _menhir_cell1_plist_elem, _menhir_box_program) _menhir_state
    (** State 026.
        Stack shape : plist_elem.
        Start symbol: program. *)

  | MenhirState034 : (('s, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : ty IDENT.
        Start symbol: program. *)

  | MenhirState037 : ((('s, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_state
    (** State 037.
        Stack shape : ty IDENT params.
        Start symbol: program. *)

  | MenhirState039 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 039.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState042 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 042.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState045 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 045.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState048 : (('s, _menhir_box_program) _menhir_cell1_unop, _menhir_box_program) _menhir_state
    (** State 048.
        Stack shape : unop.
        Start symbol: program. *)

  | MenhirState055 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 055.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState057 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 057.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState059 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 059.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState061 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 061.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState063 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 063.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState065 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 065.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState067 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 067.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState069 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 069.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState071 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 071.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState073 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 073.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState075 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 075.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState077 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 077.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState079 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 079.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState081 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 081.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState083 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 083.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState085 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 085.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState087 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 087.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState089 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 089.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState091 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 091.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState093 : ((('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 093.
        Stack shape : IDENT expr.
        Start symbol: program. *)

  | MenhirState101 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 101.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState102 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 102.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState106 : (('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_state
    (** State 106.
        Stack shape : LBRACE.
        Start symbol: program. *)

  | MenhirState108 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 108.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState110 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 110.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState112 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 112.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState115 : (('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 115.
        Stack shape : IDENT.
        Start symbol: program. *)

  | MenhirState117 : ((('s, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 117.
        Stack shape : IDENT expr.
        Start symbol: program. *)

  | MenhirState130 : (('s, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 130.
        Stack shape : ty IDENT.
        Start symbol: program. *)

  | MenhirState133 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 133.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState140 : (('s, _menhir_box_program) _menhir_cell1_lvalue, _menhir_box_program) _menhir_state
    (** State 140.
        Stack shape : lvalue.
        Start symbol: program. *)

  | MenhirState146 : ((('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 146.
        Stack shape : LBRACE IDENT.
        Start symbol: program. *)

  | MenhirState149 : ((('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_state
    (** State 149.
        Stack shape : LBRACE IDENT.
        Start symbol: program. *)

  | MenhirState151 : (((('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 151.
        Stack shape : LBRACE IDENT expr.
        Start symbol: program. *)

  | MenhirState153 : (('s, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 153.
        Stack shape : stmt.
        Start symbol: program. *)

  | MenhirState162 : (('s, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_state
    (** State 162.
        Stack shape : ty IDENT.
        Start symbol: program. *)

  | MenhirState168 : (('s, _menhir_box_program) _menhir_cell1_global, _menhir_box_program) _menhir_state
    (** State 168.
        Stack shape : global.
        Start symbol: program. *)


and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_global = 
  | MenhirCell1_global of 's * ('s, 'r) _menhir_state * (Ast.global)

and ('s, 'r) _menhir_cell1_lvalue = 
  | MenhirCell1_lvalue of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_params = 
  | MenhirCell1_params of 's * ('s, 'r) _menhir_state * ((Ast.exprType * string) list)

and ('s, 'r) _menhir_cell1_plist_elem = 
  | MenhirCell1_plist_elem of 's * ('s, 'r) _menhir_state * (Ast.exprType * string)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.statement)

and ('s, 'r) _menhir_cell1_struct_elem = 
  | MenhirCell1_struct_elem of 's * ('s, 'r) _menhir_state * (Ast.exprType * string)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.exprType)

and ('s, 'r) _menhir_cell1_unop = 
  | MenhirCell1_unop of 's * ('s, 'r) _menhir_state * (Ast.uop)

and ('s, 'r) _menhir_cell1_EXTERN = 
  | MenhirCell1_EXTERN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 10 "parser.mly"
       (string)
# 361 "parser.ml"
)

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 10 "parser.mly"
       (string)
# 368 "parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STRUCT = 
  | MenhirCell1_STRUCT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (Ast.global list) [@@unboxed]

let _menhir_action_01 =
  fun el i ->
    (
# 226 "parser.mly"
        ( SExpr(ECall(i, el)) )
# 397 "parser.ml"
     : (Ast.statement))

let _menhir_action_02 =
  fun e lv ->
    (
# 228 "parser.mly"
        ( 
                match lv with
                | EVar(i) -> SVarAssign(i, e) 
                | EArrayAccess(i, index, op) -> SArrayAssign(i, index, op, e)
                | _ -> raise UnmatchingError
        )
# 410 "parser.ml"
     : (Ast.statement))

let _menhir_action_03 =
  fun lv ->
    (
# 235 "parser.mly"
        ( 
                match lv with
                | EVar(i) -> SVarAssign(i, EBinOp(BPlus, lv ,EInt(1))) 
                | EArrayAccess(i, e, op) -> SArrayAssign(i, e, op, EBinOp(BPlus, lv ,EInt(1)))
                | _ -> raise UnmatchingError
        )
# 423 "parser.ml"
     : (Ast.statement))

let _menhir_action_04 =
  fun lv ->
    (
# 242 "parser.mly"
        (
                match lv with
                | EVar(i) -> SVarAssign(i, EBinOp(BMin, lv ,EInt(1))) 
                | EArrayAccess(i, e, op) -> SArrayAssign(i, e, op, EBinOp(BMin, lv ,EInt(1)))
                | _ -> raise UnmatchingError
        )
# 436 "parser.ml"
     : (Ast.statement))

let _menhir_action_05 =
  fun i ->
    (
# 143 "parser.mly"
        (i)
# 444 "parser.ml"
     : (string))

let _menhir_action_06 =
  fun s ->
    (
# 199 "parser.mly"
        (s)
# 452 "parser.ml"
     : (Ast.statement))

let _menhir_action_07 =
  fun r ->
    (
# 146 "parser.mly"
        ( EVar(r) )
# 460 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun i ->
    (
# 148 "parser.mly"
        ( EInt(i) )
# 468 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun c ->
    (
# 150 "parser.mly"
        ( EChar(c))
# 476 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun left right ->
    (
# 153 "parser.mly"
        ( EBinOp(BStar, left, right) )
# 484 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun left right ->
    (
# 155 "parser.mly"
        ( EBinOp(BSlash, left, right) )
# 492 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun left right ->
    (
# 157 "parser.mly"
        ( EBinOp(BPerc, left, right) )
# 500 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun left right ->
    (
# 159 "parser.mly"
        ( EBinOp(BPlus, left, right) )
# 508 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun left right ->
    (
# 161 "parser.mly"
        ( EBinOp(BMin, left, right) )
# 516 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun left right ->
    (
# 163 "parser.mly"
        ( EBinOp(BLShift, left, right) )
# 524 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun left right ->
    (
# 165 "parser.mly"
        ( EBinOp(BRShift, left, right) )
# 532 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun left right ->
    (
# 167 "parser.mly"
        ( EBinOp(BLess, left, right) )
# 540 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun left right ->
    (
# 169 "parser.mly"
        ( EBinOp(BMore, left, right) )
# 548 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun left right ->
    (
# 171 "parser.mly"
        ( EBinOp(BLEQ, left, right) )
# 556 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun left right ->
    (
# 173 "parser.mly"
        ( EBinOp(BGEQ, left, right) )
# 564 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun left right ->
    (
# 175 "parser.mly"
        ( EBinOp(BEQ, left, right) )
# 572 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun left right ->
    (
# 177 "parser.mly"
        ( EBinOp(BNEQ, left, right) )
# 580 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun left right ->
    (
# 179 "parser.mly"
        ( EBinOp(BBinAND, left, right) )
# 588 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun left right ->
    (
# 181 "parser.mly"
        ( EBinOp(BBinOR, left, right) )
# 596 "parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun left right ->
    (
# 183 "parser.mly"
        ( EBinOp(BAND, left, right) )
# 604 "parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun left right ->
    (
# 185 "parser.mly"
        ( EBinOp(BOR, left, right) )
# 612 "parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun e op ->
    (
# 187 "parser.mly"
        ( EUnOp(op, e))
# 620 "parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun i l ->
    (
# 189 "parser.mly"
        (ECall(i, l))
# 628 "parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e i op ->
    (
# 191 "parser.mly"
        (EArrayAccess(i, e, op))
# 636 "parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun e ->
    (
# 194 "parser.mly"
        ( e )
# 644 "parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun xs ->
    let l = 
# 229 "<standard.mly>"
    ( xs )
# 652 "parser.ml"
     in
    (
# 140 "parser.mly"
                (l)
# 657 "parser.ml"
     : (Ast.expr list))

let _menhir_action_32 =
  fun i p sl t ->
    (
# 268 "parser.mly"
        ( GFuncDef(t, i, p, SScope(sl)) )
# 665 "parser.ml"
     : (Ast.global))

let _menhir_action_33 =
  fun i p t ->
    (
# 270 "parser.mly"
        ( GFuncDecl(t, i, p) )
# 673 "parser.ml"
     : (Ast.global))

let _menhir_action_34 =
  fun e i t ->
    (
# 272 "parser.mly"
        ( GVarDef(t, i, e) )
# 681 "parser.ml"
     : (Ast.global))

let _menhir_action_35 =
  fun i t ->
    (
# 274 "parser.mly"
        ( GVarDecl(t, i) )
# 689 "parser.ml"
     : (Ast.global))

let _menhir_action_36 =
  fun i sl ->
    (
# 276 "parser.mly"
        ( GStruct(i, sl))
# 697 "parser.ml"
     : (Ast.global))

let _menhir_action_37 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 705 "parser.ml"
     : (Ast.global list))

let _menhir_action_38 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 713 "parser.ml"
     : (Ast.global list))

let _menhir_action_39 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 721 "parser.ml"
     : (Ast.statement list))

let _menhir_action_40 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 729 "parser.ml"
     : (Ast.statement list))

let _menhir_action_41 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 737 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_42 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 745 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_43 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 753 "parser.ml"
     : (Ast.expr list))

let _menhir_action_44 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 761 "parser.ml"
     : (Ast.expr list))

let _menhir_action_45 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 769 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_46 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 777 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_47 =
  fun i ->
    (
# 219 "parser.mly"
        (EVar(i))
# 785 "parser.ml"
     : (Ast.expr))

let _menhir_action_48 =
  fun e i op ->
    (
# 221 "parser.mly"
        (EArrayAccess(i, e, op))
# 793 "parser.ml"
     : (Ast.expr))

let _menhir_action_49 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 801 "parser.ml"
     : (string option))

let _menhir_action_50 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 809 "parser.ml"
     : (string option))

let _menhir_action_51 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 817 "parser.ml"
     : (Ast.statement option))

let _menhir_action_52 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 825 "parser.ml"
     : (Ast.statement option))

let _menhir_action_53 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 833 "parser.ml"
     : (Ast.expr option))

let _menhir_action_54 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 841 "parser.ml"
     : (Ast.expr option))

let _menhir_action_55 =
  fun xs ->
    let _1 = 
# 229 "<standard.mly>"
    ( xs )
# 849 "parser.ml"
     in
    (
# 260 "parser.mly"
        (_1)
# 854 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_56 =
  fun elem t ->
    (
# 257 "parser.mly"
        ((t, elem))
# 862 "parser.ml"
     : (Ast.exprType * string))

let _menhir_action_57 =
  fun l ->
    (
# 280 "parser.mly"
        (l)
# 870 "parser.ml"
     : (Ast.global list))

let _menhir_action_58 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 878 "parser.ml"
     : (Ast.expr list))

let _menhir_action_59 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 886 "parser.ml"
     : (Ast.expr list))

let _menhir_action_60 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 894 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_61 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 902 "parser.ml"
     : ((Ast.exprType * string) list))

let _menhir_action_62 =
  fun v ->
    (
# 202 "parser.mly"
        (v)
# 910 "parser.ml"
     : (Ast.statement))

let _menhir_action_63 =
  fun e ->
    (
# 204 "parser.mly"
         (SExpr(e))
# 918 "parser.ml"
     : (Ast.statement))

let _menhir_action_64 =
  fun l ->
    (
# 206 "parser.mly"
        (SScope(l))
# 926 "parser.ml"
     : (Ast.statement))

let _menhir_action_65 =
  fun e other thn ->
    (
# 208 "parser.mly"
        (SIf(e, thn, other))
# 934 "parser.ml"
     : (Ast.statement))

let _menhir_action_66 =
  fun e s ->
    (
# 210 "parser.mly"
        (SWhile(e, s))
# 942 "parser.ml"
     : (Ast.statement))

let _menhir_action_67 =
  fun () ->
    (
# 212 "parser.mly"
        (SBreak)
# 950 "parser.ml"
     : (Ast.statement))

let _menhir_action_68 =
  fun value ->
    (
# 214 "parser.mly"
        (SReturn(value))
# 958 "parser.ml"
     : (Ast.statement))

let _menhir_action_69 =
  fun i ->
    (
# 216 "parser.mly"
        (SDelete(i))
# 966 "parser.ml"
     : (Ast.statement))

let _menhir_action_70 =
  fun i t ->
    (
# 264 "parser.mly"
        ( (t, i) )
# 974 "parser.ml"
     : (Ast.exprType * string))

let _menhir_action_71 =
  fun () ->
    (
# 127 "parser.mly"
        (TVoid)
# 982 "parser.ml"
     : (Ast.exprType))

let _menhir_action_72 =
  fun () ->
    (
# 129 "parser.mly"
        (TInt)
# 990 "parser.ml"
     : (Ast.exprType))

let _menhir_action_73 =
  fun () ->
    (
# 131 "parser.mly"
        (TChar)
# 998 "parser.ml"
     : (Ast.exprType))

let _menhir_action_74 =
  fun i ->
    (
# 133 "parser.mly"
        (TIdent(i))
# 1006 "parser.ml"
     : (Ast.exprType))

let _menhir_action_75 =
  fun _1 ->
    (
# 135 "parser.mly"
        (TPoint(_1))
# 1014 "parser.ml"
     : (Ast.exprType))

let _menhir_action_76 =
  fun () ->
    (
# 83 "parser.mly"
                (UMin)
# 1022 "parser.ml"
     : (Ast.uop))

let _menhir_action_77 =
  fun () ->
    (
# 85 "parser.mly"
                (UWiggle)
# 1030 "parser.ml"
     : (Ast.uop))

let _menhir_action_78 =
  fun () ->
    (
# 87 "parser.mly"
                (UExclam)
# 1038 "parser.ml"
     : (Ast.uop))

let _menhir_action_79 =
  fun e i t ->
    (
# 251 "parser.mly"
        (SVarDef(t, i, e))
# 1046 "parser.ml"
     : (Ast.statement))

let _menhir_action_80 =
  fun _1 ->
    (
# 253 "parser.mly"
        (_1)
# 1054 "parser.ml"
     : (Ast.statement))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BAND ->
        "BAND"
    | BOR ->
        "BOR"
    | BREAK ->
        "BREAK"
    | CHAR _ ->
        "CHAR"
    | CHARTYPE ->
        "CHARTYPE"
    | COMMA ->
        "COMMA"
    | COMPARE ->
        "COMPARE"
    | DELETE ->
        "DELETE"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQUAL ->
        "EQUAL"
    | EXCLAM ->
        "EXCLAM"
    | EXTERN ->
        "EXTERN"
    | GEQ ->
        "GEQ"
    | GREATER ->
        "GREATER"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT _ ->
        "INT"
    | INTTYPE ->
        "INTTYPE"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LEQ ->
        "LEQ"
    | LPAREN ->
        "LPAREN"
    | LSHIFT ->
        "LSHIFT"
    | MIN ->
        "MIN"
    | NEQ ->
        "NEQ"
    | OR ->
        "OR"
    | PERCENT ->
        "PERCENT"
    | PLUS ->
        "PLUS"
    | POINT ->
        "POINT"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | RSHIFT ->
        "RSHIFT"
    | SEMI ->
        "SEMI"
    | SLASH ->
        "SLASH"
    | SMALLER ->
        "SMALLER"
    | STAR ->
        "STAR"
    | STRUCT ->
        "STRUCT"
    | VOID ->
        "VOID"
    | WHILE ->
        "WHILE"
    | WIGGLE ->
        "WIGGLE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_166 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_57 l in
      MenhirBox_program _v
  
  let rec _menhir_run_169 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_global -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_global (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_38 x xs in
      _menhir_goto_list_global_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_global_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState168 ->
          _menhir_run_169 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_166 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_71 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
              | INTTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_72 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
              | IDENT _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_3 in
                  let _v = _menhir_action_74 i in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
              | CHARTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_73 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
              | RPAREN ->
                  let _v = _menhir_action_45 () in
                  _menhir_run_031_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | EQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WIGGLE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_77 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
              | MIN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_76 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
              | LPAREN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
              | INT _v_9 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_9 in
                  let _v = _menhir_action_08 i in
                  _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
              | IDENT _v_11 ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_11 MenhirState162
              | EXCLAM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_78 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
              | CHAR _v_13 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_13 in
                  let _v = _menhir_action_09 c in
                  _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_ty -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _v = _menhir_action_75 _1 in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_ty : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState037 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState153 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState168 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_128 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WIGGLE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_77 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState130 _tok
              | MIN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_76 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState130 _tok
              | LPAREN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
              | INT _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_3 in
                  let _v = _menhir_action_08 i in
                  _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState130 _tok
              | IDENT _v_5 ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState130
              | EXCLAM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_78 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState130 _tok
              | CHAR _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_7 in
                  let _v = _menhir_action_09 c in
                  _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState130 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unop (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | INT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_2 in
          let _v = _menhir_action_08 i in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v_4 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState048
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | CHAR _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v_6 in
          let _v = _menhir_action_09 c in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_30 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
      let right = _v in
      let _v = _menhir_action_10 left right in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState130 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState146 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_163 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_34 e i t in
          _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_17 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
      let right = _v in
      let _v = _menhir_action_11 left right in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | INT _v_2 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_2 in
              let _v = _menhir_action_08 i in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | IDENT _v_4 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState045
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_09 c in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | RPAREN ->
              let _v = _menhir_action_43 () in
              _menhir_run_051_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
          | INT _v_11 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_11 in
              let _v = _menhir_action_08 i in
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
          | IDENT _v_13 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 MenhirState091
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
          | CHAR _v_15 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_15 in
              let _v = _menhir_action_09 c in
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
          | _ ->
              _eRR ())
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SLASH | SMALLER | STAR ->
          let r = _v in
          let _v = _menhir_action_07 r in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | INT _v_2 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_2 in
              let _v = _menhir_action_08 i in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | IDENT _v_4 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState089
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_09 c in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | _ ->
              _eRR ())
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_58 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | NEQ | OR | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_16 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_13 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
      let right = _v in
      let _v = _menhir_action_12 left right in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_067 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_14 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_26 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_22 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | NEQ | OR | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_15 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_19 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_18 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI | SMALLER ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_20 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | COMPARE | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_21 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BOR | COMMA | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_24 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_23 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState087 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_25 left right in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState089 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState146 ->
          _menhir_run_050_spec_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState112 ->
          _menhir_run_050_spec_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState045 ->
          _menhir_run_050_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_090 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_59 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_050_spec_146 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_44 x in
      _menhir_run_051_spec_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_051_spec_146 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_31 xs
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let el = _v in
          let _v = _menhir_action_01 el i in
          _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | AND | BAND | BOR | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RSHIFT | SLASH | SMALLER | STAR ->
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_28 i l in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_assign : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_80 _1 in
      _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_varassign : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_62 v in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState101 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState153 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState110 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_159 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let s = _v in
      let _v = _menhir_action_66 e s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_153 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState153 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | LBRACE ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | INTTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState153 _tok
      | IF ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | IDENT _v_2 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState153
      | DELETE ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | CHARTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_73 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState153 _tok
      | BREAK ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | RBRACE ->
          let _v = _menhir_action_39 () in
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
          | INT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_08 i in
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
          | IDENT _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
          | CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_09 c in
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_71 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101 _tok
          | RETURN ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | INTTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_72 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101 _tok
          | IF ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | IDENT _v_2 ->
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState101
          | DELETE ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | CHARTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_73 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101 _tok
          | BREAK ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | SEMI ->
          let _v = _menhir_action_53 () in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_54 x in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let value = _v in
      let _v = _menhir_action_68 value in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_106 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WIGGLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_77 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | WHILE ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_76 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | LPAREN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | LBRACE ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | INTTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | IF ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState106, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WIGGLE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_77 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
              | MIN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_76 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
              | LPAREN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
              | INT _v_2 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_2 in
                  let _v = _menhir_action_08 i in
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
              | IDENT _v_4 ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState146
              | EXCLAM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_78 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
              | CHAR _v_6 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_6 in
                  let _v = _menhir_action_09 c in
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
              | RPAREN ->
                  let _v = _menhir_action_43 () in
                  _menhir_run_051_spec_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | LBRACKET ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState106, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WIGGLE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_77 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149 _tok
              | MIN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_76 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149 _tok
              | LPAREN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
              | INT _v_11 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_11 in
                  let _v = _menhir_action_08 i in
                  _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149 _tok
              | IDENT _v_13 ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 MenhirState149
              | EXCLAM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_78 () in
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149 _tok
              | CHAR _v_15 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let c = _v_15 in
                  let _v = _menhir_action_09 c in
                  _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149 _tok
              | _ ->
                  _eRR ())
          | AND | BAND | BOR | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RSHIFT | SLASH | SMALLER ->
              let _v =
                let r = _v in
                _menhir_action_07 r
              in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
          | EQUAL ->
              let (_menhir_s, i) = (MenhirState106, _v) in
              let _v = _menhir_action_47 i in
              _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | IDENT _ | STAR ->
              let _v =
                let i = _v in
                _menhir_action_74 i
              in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
          | _ ->
              _eRR ())
      | EXCLAM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_78 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | DELETE ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | CHARTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_73 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | CHAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let c = _v in
          let _v = _menhir_action_09 c in
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | BREAK ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | RBRACE ->
          let _v = _menhir_action_39 () in
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_63 e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | INT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_08 i in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | IDENT _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | CHAR _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _v = _menhir_action_09 c in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_71 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | RETURN ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | INTTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_72 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | IF ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | IDENT _v_2 ->
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState110
          | DELETE ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | CHARTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_73 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | BREAK ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState112 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState112 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
          | INT _v_2 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_2 in
              let _v = _menhir_action_08 i in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState112 _tok
          | IDENT _v_4 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState112
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState112 _tok
          | CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_09 c in
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState112 _tok
          | RPAREN ->
              let _v = _menhir_action_43 () in
              _menhir_run_051_spec_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState115 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState115 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
          | INT _v_11 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_11 in
              let _v = _menhir_action_08 i in
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState115 _tok
          | IDENT _v_13 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 MenhirState115
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState115 _tok
          | CHAR _v_15 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_15 in
              let _v = _menhir_action_09 c in
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState115 _tok
          | _ ->
              _eRR ())
      | EQUAL | MIN | PLUS ->
          let i = _v in
          let _v = _menhir_action_47 i in
          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | IDENT _ | STAR ->
          let i = _v in
          let _v = _menhir_action_74 i in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051_spec_112 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_31 xs
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let el = _v in
      let _v = _menhir_action_01 el i in
      _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | POINT ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
          | EQUAL | MIN | PLUS ->
              let _v = _menhir_action_49 () in
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_05 i in
          let x = _v in
          let _v = _menhir_action_50 x in
          _menhir_goto_option_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_attr_ : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState151 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState093 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_152 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | AND | BAND | BOR | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RSHIFT | SLASH | SMALLER | STAR ->
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let op = _v in
          let _v = _menhir_action_29 e i op in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | EQUAL ->
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let op = _v in
          let _v = _menhir_action_48 e i op in
          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_lvalue : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PLUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let lv = _v in
              let _v = _menhir_action_03 lv in
              _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | MIN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let lv = _v in
              let _v = _menhir_action_04 lv in
              _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | EQUAL ->
          let _menhir_stack = MenhirCell1_lvalue (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIGGLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_77 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140 _tok
          | MIN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_76 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140 _tok
          | LPAREN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | INT _v_2 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_2 in
              let _v = _menhir_action_08 i in
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140 _tok
          | IDENT _v_4 ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState140
          | EXCLAM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_78 () in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140 _tok
          | CHAR _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v_6 in
              let _v = _menhir_action_09 c in
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell1_lvalue (_menhir_stack, _menhir_s, lv) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_02 e lv in
          _menhir_goto_assign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let op = _v in
      let _v = _menhir_action_48 e i op in
      _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_096 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let op = _v in
      let _v = _menhir_action_29 e i op in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_119 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | SEMI ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let i = _v in
                      let _v = _menhir_action_69 i in
                      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_67 () in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_150 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | POINT ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
          | AND | BAND | BOR | COMPARE | EQUAL | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RSHIFT | SLASH | SMALLER | STAR ->
              let _v = _menhir_action_49 () in
              _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_155 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_64 l in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_154 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_40 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState037 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState106 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_160 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_program) _menhir_cell1_params -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_params (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let sl = _v in
      let _v = _menhir_action_32 i p sl t in
      _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_global : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_global (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState168 _tok
      | STRUCT ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState168
      | INTTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState168 _tok
      | IDENT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_2 in
          let _v = _menhir_action_74 i in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState168 _tok
      | EXTERN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState168
      | CHARTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_73 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState168 _tok
      | EOF ->
          let _v = _menhir_action_37 () in
          _menhir_run_169 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_002 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STRUCT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_71 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
              | INTTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_72 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
              | IDENT _v_2 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_2 in
                  let _v = _menhir_action_74 i in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
              | CHARTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_73 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
              | RBRACE ->
                  let _v = _menhir_action_41 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (i, t) = (_v_0, _v) in
              let _v = _menhir_action_70 i t in
              let _menhir_stack = MenhirCell1_struct_elem (_menhir_stack, _menhir_s, _v) in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_71 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | INTTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_72 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | IDENT _v_2 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_2 in
                  let _v = _menhir_action_74 i in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | CHARTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_73 () in
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | RBRACE ->
                  let _v = _menhir_action_41 () in
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_struct_elem -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_struct_elem (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_42 x xs in
      _menhir_goto_list_struct_elem_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_struct_elem_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState004 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState012 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_014 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_STRUCT _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_STRUCT (_menhir_stack, _menhir_s) = _menhir_stack in
          let sl = _v in
          let _v = _menhir_action_36 i sl in
          _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTERN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | INTTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_74 i in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | CHARTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_73 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_EXTERN (_menhir_stack, _menhir_s) = _menhir_stack in
              let (i, t) = (_v_0, _v) in
              let _v = _menhir_action_35 i t in
              _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | LPAREN ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_71 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
              | INTTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_72 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
              | IDENT _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_3 in
                  let _v = _menhir_action_74 i in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
              | CHARTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_73 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
              | RPAREN ->
                  let _v = _menhir_action_45 () in
                  _menhir_run_031_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (elem, t) = (_v_0, _v) in
          let _v = _menhir_action_56 elem t in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_plist_elem (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_71 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | INTTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_72 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | IDENT _v_2 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_2 in
                  let _v = _menhir_action_74 i in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | CHARTYPE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_73 () in
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let x = _v in
              let _v = _menhir_action_60 x in
              _menhir_goto_separated_nonempty_list_COMMA_plist_elem_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_plist_elem_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState026 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState034 ->
          _menhir_run_024_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState021 ->
          _menhir_run_024_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_027 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_plist_elem -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_plist_elem (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_61 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_plist_elem_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_024_spec_034 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_46 x in
      _menhir_run_031_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_031_spec_034 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_55 xs
      in
      let _menhir_stack = MenhirCell1_params (_menhir_stack, MenhirState034, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_71 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
          | RETURN ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | INTTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_72 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
          | IF ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | IDENT _v_2 ->
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState037
          | DELETE ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | CHARTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_73 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
          | BREAK ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
          | RBRACE ->
              let _v = _menhir_action_39 () in
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_024_spec_021 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_46 x in
      _menhir_run_031_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_031_spec_021 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_EXTERN, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_55 xs
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_EXTERN (_menhir_stack, _menhir_s) = _menhir_stack in
          let p = _v in
          let _v = _menhir_action_33 i p t in
          _menhir_goto_global _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let s = _v in
      let _v = _menhir_action_06 s in
      let x = _v in
      let _v = _menhir_action_52 x in
      _menhir_goto_option_else_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_option_else_stmt_ : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, thn) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let other = _v in
      let _v = _menhir_action_65 e other thn in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_132 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_71 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133 _tok
          | RETURN ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | INTTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_72 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133 _tok
          | IF ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | IDENT _v_2 ->
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState133
          | DELETE ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | CHARTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_73 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133 _tok
          | BREAK ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | _ ->
              _eRR ())
      | BREAK | CHARTYPE | DELETE | IDENT _ | IF | INTTYPE | LBRACE | RBRACE | RETURN | VOID | WHILE ->
          let _v = _menhir_action_51 () in
          _menhir_goto_option_else_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050_spec_112 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_44 x in
      _menhir_run_051_spec_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_050_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_44 x in
      _menhir_run_051_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_051_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENT -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_31 xs
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, i) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_28 i l in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | POINT ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | AND | BAND | BOR | COMMA | COMPARE | GEQ | GREATER | LEQ | LSHIFT | MIN | NEQ | OR | PERCENT | PLUS | RBRACE | RBRACKET | RPAREN | RSHIFT | SEMI | SLASH | SMALLER | STAR ->
              let _v = _menhir_action_49 () in
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ty _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SMALLER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MIN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GREATER ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMPARE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell0_IDENT (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_79 e i t in
          _menhir_goto_varassign _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_unop -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_unop (_menhir_stack, _menhir_s, op) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_27 e op in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | STRUCT ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INTTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_74 i in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | EXTERN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | CHARTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_73 () in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | EOF ->
          let _v = _menhir_action_37 () in
          _menhir_run_166 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
