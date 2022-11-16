
(* comments and whitespace ignored here *)
type token =
                          (* IDENTIFIER *)
  | IDENT of string
                          (* TYPES *)
  | DECINT of int
  | CHAR of char
  (* | STRING of string *)
                          (* KEYWORDS *)
  | BREAK
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
                          (* ALGEBRAIC OPERATORS *)
  | ADD
  | SUB
  | MUL
  | DIV
                          (* GENERAL CHARACTERS *)
  | MOD
  | LT
  | GT
  | LTE
  | GTE 
  | EQ
  | NEQ 
  | BITAND
  | BITOR
  | AND
  | OR
  | LBRACK
  | RBRACK
  | LPAREN
  | RPAREN
  | LCURLY
  | RCURLY
  | COMMA
  | SEMICOLON
                          (* SPECIAL CHARACTERS *)
  | EOF
  | EOL