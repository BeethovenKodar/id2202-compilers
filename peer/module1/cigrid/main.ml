(* An extended example with Menhir that outputs an abstract syntax tree.
 * Copyright (C) David Broman, 2022. MIT License.
 *
 * This example shows how to parse and generate an abstract syntax tree.
 * The example also shows how keywords are handled, and how to
 * pretty print the AST.
 *
 * This video shows how the code is created:
 *   (Video to be added)
 *)

open Printf
open Ast

let pp = ref false
let file = ref ""

let anon_func filename = 
        file := filename

let speclist = 
        [("--pretty-print", Arg.Set pp,"pretty prints result")]

let get_token_list lexbuf =
        let rec work acc =
                match Lexer.token lexbuf with
                | EOF -> acc
                | t -> work(t :: acc)
        in List.rev (work [])

let pretty lexbuf = 
        let res =
        try Parser.program Lexer.token lexbuf
            with
            | Lexer.Error c ->
               fprintf stderr "Lexical error at line %d: Unknown character '%c'\n"
                 lexbuf.lex_curr_p.pos_lnum c;
               exit 1
            | Parser.Error ->
               fprintf stderr "Parse error at line %d:\n" lexbuf.lex_curr_p.pos_lnum;
               exit 1
            in
        let _ = res in
        Printf.printf "%s\n" (pprint_program res)
let try_parse () = 
        let argv_list = Sys.argv in
        try Arg.parse_argv argv_list speclist anon_func "TBD"  
        with
        | Arg.Bad(msg) -> print_endline msg;exit 1

let main =
        try_parse (); 
        let file_channel = open_in !file in
        let lb = Lexing.from_channel file_channel in
        if (!pp) then (pretty lb)
        else (Printf.printf "Provide flag pls!\n")

