open Ast

let pprint = function
  | EHello  w -> "Hello, " ^ w ^ "!"

let _ =
  try
    let lexbuf = Lexing.from_string "Hello, World!" in
    let expr = Parser.expr Lexer.token lexbuf in
    print_endline (pprint expr)
  with _ -> exit 1
