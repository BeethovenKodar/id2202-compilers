
{
  open Parser 
  exception Error of char
}

let letter = ['A'-'Z'] | ['a'-'z'] 
let char_pattern = [' ' '!' '#'-'&' '('-'[' ']'-'~']
let digit = ['0'-'9']
let non_digit = '_' | letter
let ident = non_digit (digit | non_digit)*
let string_pattern = _*
let line_comment = "//" [^ '\n']*
let full_comment = '/' '*' ([^ '*'] | '*'[^'/'])* '*''/'
let preprocessor = "#" [^ '\n']*

rule token = parse
|  [' ' '\t'] | line_comment | preprocessor | full_comment
        { token lexbuf }
| ['\n']
        { Lexing.new_line lexbuf; token lexbuf }
| ","
        {COMMA}
| "("
        {LPAREN}
| ")"
        {RPAREN}
| "{" 
        {LBRACE}      
| "}"
        {RBRACE}
| "["
        {LBRACKET}
| "]"
        {RBRACKET}
| "."
        {POINT}
| ";"
        {SEMI}
(* Binary Operators *)
| "=" 
        { EQUAL }
| "+"
        { PLUS }
| "-"
        { MIN }
| "*"
        { STAR}
| "/"
        { SLASH }
| "%"
        { PERCENT }
| "<"
        { SMALLER }
| ">" 
        { GREATER }
| "<=" 
        { LEQ }      
| ">="
        { GEQ }
| "=="
        { COMPARE }
| "!="
        { NEQ }
| "&"
        { BAND }
| "|"
        { BOR }
| "&&"
        { AND }
| "||"
        { OR }
| "<<"
        {LSHIFT}
| ">>"
        {RSHIFT}
(* Unary ops *)
| "~"
        {WIGGLE}
| "!"
        {EXCLAM}
(* Deal with consts *)
| "'\\n'"
        {CHAR('\n')}
| "'\\t'"
        {CHAR('\t')}
| "'\\\"'"
        { CHAR('"') }
| "'\\\\'"
        {CHAR('\\')}
| "'\\\''"
        {CHAR('\'')}
| "'" (char_pattern as c) "'"
        { CHAR(c) }
(* numerical tomfoolery *)
| '0'
        {INT(0)}
| '0' digit*
        {raise (Error '0')}
| (['1'-'9']digit*) as lxm
        { INT(int_of_string lxm) } 

(* Deal with identifiers *)
| ident as str
        { match str with
         | "break" -> BREAK 
         | "char" -> CHARTYPE
         | "delete" -> DELETE
         | "else" -> ELSE
         | "extern" -> EXTERN
        (*| "for" -> FOR*)
         | "if" -> IF
         | "int" -> INTTYPE
         (*| "new" -> NEW*)
         | "return" -> RETURN
         | "struct" -> STRUCT
         | "void" -> VOID
         | "while" -> WHILE
         | s -> IDENT(s)
        }
| eof
        { EOF }
| _ as c
        { raise (Error c) }
