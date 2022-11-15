
(* comments and whitespace ignored here *)
type token =
    (* IDENTIFIER *)
  | IDENT

  (* TYPES *)
  | DECINT of int
  | CHAR of char
  | STRING of string

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
  | RETURN
  | VOID
  | WHILE
  
  (* SYMBOLS *)
  | ADD
  | SUB
  | MUL
  | DIV
  | EOL

  (* SPECIAL CHARACTERS *)
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

  (* *)
  | EOF
  | EOL