{
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let lex_error exit_code msg line_no =
    let () = Printf.printf ("%s at (line %d) --> exit %d\n") 
        msg line_no exit_code in
      exit exit_code
}

let allowed_chars = ' ' | '!' | ['#'-'&'] | ['('-'.'] | ['0'-'~']  
                        | "\\n" | "\\t" | "\\'" | "\\\"" | "\\\\"
let whitespace = ' ' | '\n' | '\r'
let comment = "#"[^'\n']*'\n' 
            | "/*"(whitespace | allowed_chars)*"*/" 
            | "//"[^'\n']*'\n'
let identifier = ['_''a'-'z''A'-'Z']['_''a'-'z''A'-'Z''0'-'9']*
let decimal_num = '0' | ['1'-'9']['0'-'9']*


rule token = parse
  | "break" { BREAK }                   (* KEYWORDS *)
  | "else" { ELSE }
  | "extern" { EXTERN }
  | "for" { FOR }
  | "if" { IF }
  | "return" { RETURN }
  | "struct" { STRUCT }
  | "void" { VOID }
  | "while" { WHILE }
  | "int" { TINT }
  | "char" { TCHAR }
  | "void" { TVOID }
  | identifier as name { IDENT(name) }  (* IDENTIFIER *)
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
  | '+' { ADD }                         (* NORMAL TOKENS *)
  | '-' { SUB }
  | '*' { MUL }
  | '/' { DIV }                 
  | '%' { MOD }               
  | '<' { LT }
  | '>' { GT }
  | "<=" { LTE }
  | ">=" { GTE }
  | "="  { ASSIGN }
  | "==" { EQ }
  | "!=" { NEQ }
  | '&' { BITAND }
  | '|' { BITOR }
  | "&&" { AND }
  | "||" { OR }
  | '-' { DASH }
  | '!' { NOT }
  | '~' { TILDE }
  | '[' { LBRACK }
  | ']' { RBRACK }
  | '(' { LPAREN }
  | ')' { RPAREN }
  | '{' { LCURLY }
  | '}' { RCURLY }
  | ',' { COMMA }
  | ';' { SEMICOLON }
  | decimal_num as num { DECINT(int_x num) }
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
        lex_error 1 msg line () 
    }
  | eof { EOF }
  | _ as char
    { 
      let str = String.make 1 char in
      let msg = "Unrecognized symbol: \"" ^ (String.make 1 char) ^ "\"" in
      let line = lexbuf.lex_curr_p.pos_lnum in
      lex_error 1 msg line_no
    }