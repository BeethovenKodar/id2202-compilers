{
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let lex_error exit_code msg =
    let () = print_endline (msg ^ "\" -> exit " ^ (string_of_int exit_code)) in
      exit exit_code

  (* let whitespace = [' ' | '\n' | '\r']
  let decimal_num = ['0'-'9'] | ['1'-'9']['0'-'9']*
  let character = ['a'-'z''A'-'Z'] *)
}

rule token = parse
  (* | whitespace
    { token lexbuf }
  | ['\n' ]
    { EOL }
  | decimal_num as num
    { DECINT(int_of_string num) } *)
  (* | character as char
    { CHAR(char) } *)
  | '+'
    { ADD }
  | '-'
    { SUB }
  | '*'
    { MUL }
  | '/'
    { DIV }
  | "%" 
    { MOD }
  | "<" 
    { LT }
  | ">" 
    { GT }
  | "<=" 
    { LTE }
  | ">=" 
    { GTE }
  | "==" 
    { EQ }
  | "!=" 
    { NEQ }
  | "&" 
    { BITAND}
  | "|" 
    { BITOR }
  | "&&" 
    { AND }
  | "||"
    { OR }
  | eof
    { EOF }
  | _ 
    { lex_error 1 ("Unrecognized symbol: \"" ^ Lexing.lexeme lexbuf) }