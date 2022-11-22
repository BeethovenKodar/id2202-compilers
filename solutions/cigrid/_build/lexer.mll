{
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let lex_error exit_code msg line_no =
    let () = Printf.printf ("%s at (line %d) --> exit %d\n") 
        msg line_no exit_code in
      exit exit_code
}

let whitespace = ' ' | '\n' | '\r'
let decimal_num = '0' | ['1'-'9']['0'-'9']*
let allowed_chars = ' ' | '!' | ['#'-'&'] | ['('-'.'] | ['/'-'~']  
                        | "\\n" | "\\t" | "\\'" | "\\\"" | "\\\\"
let comment = "#"[^'\n']*'\n' 
            | "/*"(whitespace | allowed_chars)*"*/" 
            | "//"[^'\n']*'\n'
let identifier = ['_''a'-'z''A'-'Z']['_''a'-'z''A'-'Z''0'-'9']*


rule token = parse
  | "break" { BREAK }                   (* KEYWORDS *)
  | "else" { ELSE }
  (* | "extern" { EXTERN } *)
  (* | "for" { FOR } *)
  | "if" { IF }
  | "return" { RETURN }
  (* | "struct" { STRUCT } *)
  | "while" { WHILE }
  | "int" { TINT }
  | "char" { TCHAR }
  | "void" { TVOID }
  | "++" { ADDSUGAR }                   (* NORMAL TOKENS *)
  | '+' { ADD }                         
  | "--" { SUBSUGAR }
  | '-' { SUB }
  | '*' { MUL }
  | '/' { DIV }                 
  | '%' { MOD }               
  | "<=" { LTEQ }
  | '<' { LT }
  | ">=" { GTEQ }
  | '>' { GT }
  | "==" { EQ }
  | "="  { ASSIGN }
  | "!=" { NEQ }
  | "&&" { AND }
  | '&' { BITAND }
  | "||" { OR }
  | '|' { BITOR }
  | '-' { UMINUS }
  | '!' { NOT }
  | '~' { TILDE }
  (* | '[' { LBRACK } *)
  (* | ']' { RBRACK } *)
  | '(' { LPAREN }
  | ')' { RPAREN }
  | '{' { LCURLY }
  | '}' { RCURLY }
  | ',' { COMMA }
  | ';' { SEMICOLON }
  | comment { token lexbuf }            (* IGNORED PATTERNS *) 
  | whitespace as white
    { 
      match white with
      | '\n' ->
        let () = Lexing.new_line lexbuf in
        token lexbuf
      | '\r' | ' ' | _ ->
        token lexbuf
    }
  | identifier as name { IDENT(name) }  (* IDENTIFIER *)
  | decimal_num as num { DECINT(int_of_string num) }
  | '\''(allowed_chars)'\'' as char 
    {
      let len = String.length char in
      if len = 3 then
        CHAR(String.get char 1)
      else if len = 4 then begin        (* ESCAPABLE CHARACTERS *)
        match String.sub char 1 2 with
        | "\\n" -> CHAR('\n')
        | "\\t" -> CHAR('\t')
        | "\\'" -> CHAR('\'')
        | "\\\"" -> CHAR('\"')
        | "\\\\" -> CHAR('\\')
        | str -> 
          let msg = "Unrecognized char literal \"" ^ str ^ "\"" in
          let line = lexbuf.lex_curr_p.pos_lnum in
          lex_error 1 msg line
      end else 
        let found = String.sub char 1 (String.length char - 1) in
        let msg = "Invalid character literal \"" ^ found ^ "\"" in
        let line = lexbuf.lex_curr_p.pos_lnum in
        lex_error 1 msg line
    }
  | eof { EOF }
  | _ as char
    { 
      let symbol = String.make 1 char in
      let msg = "Unrecognized symbol: \"" ^ symbol ^ "\"" in
      let line = lexbuf.lex_curr_p.pos_lnum in
      lex_error 1 msg line
    }