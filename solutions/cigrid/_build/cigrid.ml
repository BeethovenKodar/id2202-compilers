
open Printf
open Token

(* recursively call the rea *)
let get_token_list lexbuf = 
  let rec work acc = 
    match Lexer.token lexbuf with
    | EOF -> acc
    | token -> 
      work(token::acc) in
  List.rev (work [])

let main =
  let lexbuf = Lexing.from_channel stdin in
  let token_list = get_token_list lexbuf in
  printf "length: %d\n" (List.length token_list)