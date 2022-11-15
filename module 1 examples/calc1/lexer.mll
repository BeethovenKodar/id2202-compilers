{
   open Parser
   exception Eof
}

rule token = parse
    [' ' '\t']
      { token lexbuf }
  | ['\n' ]
      { EOL }
  | ['0'-'9']+ as lxm
      { INT(int_of_string lxm) }
  | '+'
      { PLUS }
  | '*'
      { TIMES }
  | '('
      { LPAREN }
  | ')'
      { RPAREN }
  | eof
    { raise Eof }
