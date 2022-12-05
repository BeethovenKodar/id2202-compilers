
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


let usage_msg = "./cigrid [--pretty-print] [--ir] [--asm] source-file "
let pprint_ast = ref false
let pprint_asm = ref false
let pprint_ir = ref false
let input_files = ref []
let anon_args file = 
  input_files := (file :: !input_files)
let speclist = 
  [
    ("--pretty-print", Arg.Set pprint_ast, "pretty print the generated ast");
    ("--asm", Arg.Set pprint_asm, "pretty print the generated x86-64 assembly code");
    ("--ir", Arg.Set pprint_ir, "pretty print generated ir")
  ]

let () =
  try
    Arg.parse_argv Sys.argv speclist anon_args usage_msg;
    if (!pprint_ast = false && !pprint_asm = false && !pprint_ir = false) then
      exit 0;
    let rec work = function 
    | [] -> ()
    | (hd::tl) ->
      let lexbuf = Lexing.from_channel (Stdlib.open_in hd) in
      let ast_globals = 
        try
          Parser.program Lexer.token lexbuf
        with
        | Parser.Error ->
          let () = printf "Parse error at line %d\n" (lexbuf.lex_curr_p.pos_lnum) in
          exit 1 
      in
      let ir = Ast_to_ir.convert ast_globals in
      let block_list = Instr_select.convert ir in
     
      (if (!pprint_ast = true) then
        Pprint_ast.p_prog ast_globals;
      if (!pprint_ir = true) then
        Pprint_ir.p_ir_func ir;
      if (!pprint_asm = true) then
        (* let () = Pprint_asm.p_block block_list in
        let () = print_endline "\n\n" in *)
        Spilling.spill block_list;);
    work tl in
    let () = work !input_files in
    exit 0
  with
  | Arg.Bad(msg) ->
    let () = Printf.printf "%s" msg in
    exit 1
