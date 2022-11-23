
(* The type of tokens. *)

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
  | INT of (int)
  | IF
  | IDENT of (string)
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
  | CHAR of (char)
  | BREAK
  | BOR
  | BAND
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.global list)
