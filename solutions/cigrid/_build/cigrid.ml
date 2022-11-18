
open Printf
open Token

(* derive all tokens provided from stdin until EOF *)
let get_token_list lexbuf = 
  let rec work acc = 
    match Lexer.token lexbuf with
    | EOF -> acc
    | token -> 
      work(token::acc) in
  List.rev (work [])

let main =
  let lexbuf = Lexing.from_channel stdin in
  (* let token_list = get_token_list lexbuf in *)
  let res = 
    try
      Parser.main Lexer.token lexbuf
    with
    | Parser.Error ->
      let () = fprintf "Parse error at line %d\n" (lexbuf.lex_curr_p.pos_lnum) in
      exit 1
  in printf "Result collected\n" 
  (* printf "length: %d\n" (List.length token_list) *)