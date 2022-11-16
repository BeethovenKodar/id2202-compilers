{
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let lex_error exit_code msg =
    let () = print_endline (msg ^ "\" --> exit " ^ (string_of_int exit_code)) in
      exit exit_code
}

let allowed_chars = ' ' | '!'| ['#'-'&'] | ['('-'.'] | ['0'-'~']
let whitespace = ' ' | '\n' | '\r'
let comm_or_include = "#"[^'\n']*'\n' | "/*"(whitespace | allowed_chars)*"*/" | "//"[^'\n']*'\n'
let identifier = ['_''a'-'z''A'-'Z']['_''a'-'z''A'-'Z''0'-'9']*
let decimal_num = ['0'-'9'] | ['1'-'9']['0'-'9']*

rule token = parse
                          (* IDENTIFIER *)
  | identifier as name
    { IDENT(name) }
                          (* KEYWORDS *)
  | "break"
    { BREAK }
  | "else"
    { ELSE }
  | "extern"
    { EXTERN }
  | "for"
    { FOR }
  | "if" 
    { IF }
  | "return" 
    { RETURN }
  | "struct"
    { STRUCT }
  | "void"
    { VOID }
  | "while" 
    { WHILE }
                          (* ESCAPABLE CHARACTERS *)
  | "\\n"
    { CHAR('\n') }
  | "\\t"
    { CHAR('\t') }
  | "\\\\"
    { CHAR('\\') }
  | "\'"
    { CHAR('\'') }
  | "\""
    { CHAR('"') }
                          (* IGNORED PATTERNS *)
  | comm_or_include 
    { token lexbuf }
  | whitespace
    { token lexbuf }
                          (* ALGEBRAIC OPERATORS *)
  | '+'
    { ADD }
  | '-'
    { SUB }
  | '*'
    { MUL }
  | '/'
    { DIV }
                          (* GENERAL CHARACTERS *)
  | '\n'
    { EOL }
  | decimal_num as num
    { DECINT(int_of_string num) }
  | allowed_chars as char
    { CHAR(char) }
  | '%' 
    { MOD }
  | '<' 
    { LT }
  | '>' 
    { GT }
  | "<=" 
    { LTE }
  | ">=" 
    { GTE }
  | "==" 
    { EQ }
  | "!=" 
    { NEQ }
  | '&' 
    { BITAND}
  | '|'
    { BITOR }
  | "&&" 
    { AND }
  | "||"
    { OR }
  | eof
    { EOF }
  | _ 
    { lex_error 1 ("Unrecognized symbol: \"" ^ Lexing.lexeme lexbuf) }