
(* comments and whitespace ignored here *)
type token =
  | BREAK                   (* KEYWORDS *)
  (* | DELETE *)
  | ELSE
  | EXTERN
  | FOR
  | IF
  | RETURN
  (* | NEW *)
  | STRUCT
  | VOID
  | WHILE
  | ADD                     (* GENERAL CHARACTERS *)
  | SUB
  | MUL
  | DIV
  | IDENT of string         (* IDENTIFIER *)
  | MOD
  | LT
  | GT
  | LTE
  | GTE 
  | ASSIGN
  | EQ
  | NEQ 
  | BITAND
  | BITOR
  | AND
  | OR
  | DASH
  | NOT
  | TILDE
  | LBRACK
  | RBRACK
  | LPAREN
  | RPAREN
  | LCURLY
  | RCURLY
  | COMMA
  | SEMICOLON
  | DECINT of int           (* TYPES *)
  | CHAR of char
  | EOF                     (* SPECIAL CHARACTER *)