(*
  ORIGINAL:
  expr -> expr "+" expr
    | expr "-" expr 
    | expr "*" expr 
    | expr "/" expr
    | Num
    | "(" expr ")"   

  NEW: (expr' gives div and mul higher precedence)
  expr   -> term expr'
  ------------------------------
  expr'  -> "+" term expr' 
  expr'  -> "-" term expr'
  expr'  -> 
  ------------------------------
  term   -> factor term'
  ------------------------------
  term'  -> "*" factor term'
  term'  -> "/" factor term'
  term'  ->
  ------------------------------
  factor -> Num (parenthesis can override precedence)
  factor -> | "(" expr ")"
*)

open Printf

(* X-X-X-X-X-X-X-X TYPES START X-X-X-X-X-X-X-X *)

type token =
 | AddToken
 | SubToken
 | MulToken
 | DivToken
 | NumToken of int
 | LParenToken
 | RParenToken
 | NewLineToken
 | EOFToken

type expr =
 | ExprAdd of expr * expr
 | ExprSub of expr * expr
 | ExprMul of expr * expr
 | ExprDiv of expr * expr
 | ExprNum of int
(* X-X-X-X-X-X-X-X TYPES END X-X-X-X-X-X-X-X *)


(* X-X-X-X-X-X-X-X HELPERS START X-X-X-X-X-X-X-X *)
(* terminate program with provided exit code and error message *)
let exit_error exit_code msg =
  let () = print_endline msg in
    exit exit_code

(* generic funciton for building the pretty string
   and returning expression values *)
let rec str_fmt e1 e2 op =
  let (l_val, l_str) = pretty_print_ast e1 in
  let (r_val, r_str) = pretty_print_ast e2 in
  let fmt_str = "(" ^ l_str ^ " " ^ op ^ " " ^ r_str ^ ")" in
    (l_val, r_val, fmt_str)

(* identify expression type, return formatted string
    and the numberical result *)
and pretty_print_ast = function
| ExprAdd(e1, e2) ->
  let (e1_val, e2_val, fmt_str) = str_fmt e1 e2 "+" in
    (e1_val + e2_val, fmt_str)
| ExprSub(e1, e2) ->
  let (e1_val, e2_val, fmt_str) = str_fmt e1 e2 "-" in
    (e1_val - e2_val, fmt_str)
| ExprMul(e1, e2) ->
  let (e1_val, e2_val, fmt_str) = str_fmt e1 e2 "*" in
    (e1_val * e2_val, fmt_str)
| ExprDiv(e1, e2) ->
  let (e1_val, e2_val, fmt_str) = str_fmt e1 e2 "/" in
  if e2_val = 0 then
    exit_error 2 "Runtime error: cannot divide by zero"
  else
    (e1_val / e2_val, fmt_str)   
| ExprNum(value) ->
  (value, string_of_int value)
(* X-X-X-X-X-X-X-X HELPERS END X-X-X-X-X-X-X-X *)


(* X-X-X-X-X-X-X-X PARSE START X-X-X-X-X-X-X-X *)
(**)
let rec parse_expr token = 
  let (next, expr) = parse_term token in
    parse_expr_pr next expr

(**)
and parse_expr_pr token expr =
  match token with
  | AddToken ->
    let next = read_token stdin in
      let (next_2, expr_2) = parse_term next in
        parse_expr_pr next_2 (ExprAdd(expr, expr_2))
  | SubToken ->
    let next = read_token stdin in
      let (next_2, expr_2) = parse_term next in
        parse_expr_pr next_2 (ExprSub(expr, expr_2))
  | _ ->
    (token, expr) 

(**)    
and parse_term token =
  let (next, expr) = parse_factor token in
    parse_term_pr next expr 

(**)    
and parse_term_pr token expr =
  match token with
  | MulToken ->
    let next = read_token stdin in
      let (next_2, expr_2) = parse_factor next in
        parse_term_pr next_2 (ExprMul(expr, expr_2))
  | DivToken ->
    let next = read_token stdin in
      let (next_2, expr_2) = parse_factor next in
        parse_term_pr next_2 (ExprDiv(expr, expr_2))
  | _ ->
      (token, expr) 

(**)
and parse_factor = function
  | NumToken(num) ->
    if num <> 0 then
      let (next, res_num) = create_num num in
      (next, ExprNum(res_num))
    else
      let next = read_token stdin in
      (next, ExprNum(num))
  | LParenToken ->
    let next = read_token stdin in
      let (token, expr) = parse_expr next in
        if token <> RParenToken then
          exit_error 1 "Parsing error: no \")\" found to match \"(\""
        else
          let next_2 = read_token stdin in
            (next_2, expr)
  | _ ->
    exit_error 1 "Parsing error: expected int or closing parenthesis"

(* read tokens until no more digits show, allows multi-digit numbers *)
and create_num num =  
  let token = read_token stdin in
  match token with
  | NumToken(value) -> 
    create_num (int_of_string(string_of_int num ^ string_of_int value))
  | _ -> 
    (token, num)
(* X-X-X-X-X-X-X-X PARSE END X-X-X-X-X-X-X-X *)


(* read one char and convert it to corresponding token,
   recurse if next is newline, tab or space *)
and read_token channel = 
  try
    let c = input_char channel in
      if c = ' ' || c = '\t' then
        read_token channel
      else
        lex c
  with
    End_of_file -> EOFToken

(* convert the input char to token type *)
and lex = function
  | '+' -> AddToken
  | '-' -> SubToken
  | '*' -> MulToken
  | '/' -> DivToken
  | '(' -> LParenToken
  | ')' -> RParenToken
  | '\n' -> NewLineToken
  | c ->
    try 
      let char_as_string = String.make 1 c in
      let num = int_of_string char_as_string in
        NumToken(num)
    with
    | Failure(_) ->
      exit_error 1 ("Lexical error: symbol " ^ (String.make 1 c) ^ " not recognized")
    
(* read first token and parse with recursive decent *)
let entry_point =
  let rec parse_line token =
    match token with
    | EOFToken ->
      exit 0
    | NewLineToken -> (* two newlines -> exit *)
      let next = read_token stdin in
      if (next = EOFToken || next = NewLineToken) then
        exit 0
      else
        parse_line next
    | _ ->
      let (next, ast_root) = parse_expr token in
      if (next <> EOFToken && next <> NewLineToken) then
        exit_error 1 "Parsing error: incorrect sequence\n"
      else
        let (num_val, fmt_str) = pretty_print_ast ast_root in
        let () = printf ("%s\n= %d\n\n") fmt_str num_val in
          parse_line next in
  let next = read_token stdin in
    parse_line next