
(* comments and whitespace ignored here *)
type token =
  | BREAK                   (* KEYWORDS *)
  (* | DELETE *)
  | ELSE
  (* | EXTERN *)
  (* | FOR *)
  | IF
  | RETURN
  (* | NEW *)
  (* | STRUCT *)
  | WHILE
  | NOT                     (* UNARY OPERATORS *)
  | TILDE
  | UMINUS
  | ADD                     (* BINARY OPERATORS *)
  | ADDSUGAR
  | SUB
  | SUBSUGAR
  | MUL
  | DIV
  | IDENT of string         (* IDENTIFIER *)
  | MOD
  | LT
  | GT
  | LTEQ
  | GTEQ 
  | ASSIGN
  | EQ
  | NEQ 
  | BITAND
  | BITOR
  | AND
  | OR
  | TVOID                   (* TYPES *)
  | TINT 
  | TCHAR
  | DECINT of int           (* VALUES *)
  | CHAR of char
  (* | LBRACK *)
  (* | RBRACK *)
  | LPAREN
  | RPAREN
  | LCURLY
  | RCURLY
  | COMMA
  | SEMICOLON
  | EOF                     (* SPECIAL CHARACTER *)