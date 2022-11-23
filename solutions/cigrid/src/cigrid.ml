
open Printf
(* open Token *)
(* open Pprint_ast *)

(* derive all tokens provided from stdin until EOF *)
(* let get_token_list lexbuf = 
  let rec work acc = 
    match Lexer.token lexbuf with
    | EOF -> acc
    | token -> 
      work(token::acc) in
  List.rev (work []) *)


let usage_msg = "./cigrid --pretty-print source-file "
let pretty_print = ref false
let input_files = ref []
let anon_args file = 
  input_files := file :: !input_files
let speclist = 
  [
    ("--pretty-print", Arg.Set pretty_print, "pretty print the generated ast");
  ]

let _ = (* entry point *)
  try
    Arg.parse_argv Sys.argv speclist anon_args usage_msg;

    if !pretty_print = false then
      exit 0;
    
    let rec work = function 
    | [] -> exit 0
    | (hd::tl) ->
      let lexbuf = Lexing.from_channel (Stdlib.open_in hd) in
      (* let token_list = get_token_list lexbuf in
      Printf.printf "%d" (List.length token_list); *)
      let list_of_ast_globals = 
        try
          Parser.program Lexer.token lexbuf
        with
        | Parser.Error ->
          let () = printf "Parse error at line %d\n" (lexbuf.lex_curr_p.pos_lnum) in
          exit 1 
        in
      let () = Pprint_ast.p_prog list_of_ast_globals in
      work tl
    in work !input_files
  with
  Arg.Bad(msg) ->
    let () = Printf.printf "%s" msg in
    exit 1
