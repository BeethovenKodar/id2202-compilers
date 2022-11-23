open Str
(*Import Debugger Tools*)
let takeInput () = 
        let str = (input_line stdin) in
	str
(* Change into tokens *)
type token = 
	| TokAdd
	| TokMin
	| TokMul
	| TokDiv
	| TokNum of int
	| TokLParen
	| TokRParen
	| TokEOF

type expr =
        | ExprAdd of expr * expr
        | ExprSub of expr * expr
        | ExprMul of expr * expr
        | ExprDiv of expr * expr
        | ExprNum of int

let rec prettyTok tList = match tList with
        | TokAdd :: xs -> " + " ^ prettyTok xs
	| TokMin :: xs -> " - " ^ prettyTok xs
	| TokMul :: xs -> " * " ^ prettyTok xs
	| TokDiv :: xs -> " / " ^ prettyTok xs
	| TokNum(v) :: xs -> (string_of_int v) ^ prettyTok xs
	| TokLParen :: xs -> "(" ^ prettyTok xs
	| TokRParen :: xs -> ")" ^ prettyTok xs
	| TokEOF :: xs -> "\n"
        | [] -> ""

(* All the Lexer stuff boys *)
(* Returns an array of tokens *)
let rec tokenize arr = match arr with
        | x :: xs -> (match x with 
                | Delim(s) -> 
                        if (s = "+") then (TokAdd :: (tokenize xs)) 
                        else if (s = "-") then (TokMin :: (tokenize xs))
                        else if (s = "*") then (TokMul :: (tokenize xs))
                        else if (s = "/") then (TokDiv :: (tokenize xs))
                        else if (s = "(") then (TokLParen :: (tokenize xs))
                        else if (s = ")") then (TokRParen :: (tokenize xs))
                        else (TokNum(int_of_string s):: (tokenize xs))
                | Text(s) ->    
                                (print_endline ("tokenizing error! current progress: " ^ s) ; exit 1;)
        )
        | [] -> [TokEOF]

let bigSplit str =
        let reg = Str.regexp "+\\|-\\|*\\|/\\|(\\|)\\|0\\|[1-9][0-9]*" in
	Str.full_split reg str

(*Recusive Decent Parser*)
let rec parseFactor tList = match (List.hd tList) with
        | TokNum(v) -> ((List.tl tList), ExprNum(v))
        | TokLParen -> (
                let next = (List.tl tList) in
                let (tok2, expr) = (parseExpr next) in
                if ((List.hd tok2) = TokRParen) then ((List.tl tok2, expr))
                else (print_endline "parsing error missing paren."; exit 1)
        )
        | _ -> print_endline "parsing error 2"; exit 1


and parseTermPrime tList expr = match (List.hd tList) with
        | TokMul ->  (
                let (tok2, expr2) = parseFactor (List.tl tList) in
                parseTermPrime tok2 (ExprMul(expr, expr2))
        ) 
        | TokDiv ->  (
                let (tok2, expr2) = parseFactor (List.tl tList) in
                parseTermPrime tok2 (ExprDiv(expr, expr2))

        )
        | _ -> (tList, expr) 

and parseTerm tList = 
        let (tok2, expr) = parseFactor(tList) in
        parseTermPrime tok2 expr

and parseExprPrime tList expr = match (List.hd tList) with 
        | TokAdd -> (
                let (tok2, expr2) = parseTerm (List.tl tList) in
                parseExprPrime tok2 (ExprAdd(expr,expr2))
        )
        | TokMin -> (
                let (tok2, expr2) = parseTerm (List.tl tList) in
                parseExprPrime tok2 (ExprSub(expr, expr2))
        )
        | _ -> (tList, expr)

and parseExpr tList = 
        let (tok2, expr) = parseTerm(tList) in
        parseExprPrime tok2 expr

let rec parseMain tList =
        let (tok, expr) = (parseExpr tList) in
        if ((List.hd tok) != TokEOF) then (
                print_endline (prettyTok tok);
               print_endline "parsing error on that tok"; exit 1;
        ) else (expr)

(*Takes string, returns tokenized array*)
let lexer str =
        (*remove whitespaces and enters*)
        let strn = Str.(global_replace (regexp "[ \n]") "" str) in
        tokenize (bigSplit (strn))
(*Takes tokenized array, returns final expression*)
let parse tList =
        parseMain tList

(*Things to use afte parsing*) 
let rec pretty p = match p with
        | ExprAdd(e1, e2) -> "(" ^ (pretty e1) ^ " + " ^ (pretty e2) ^ ")"
        | ExprSub(e1, e2) -> "(" ^ (pretty e1) ^ " - " ^ (pretty e2) ^ ")"
        | ExprMul(e1, e2) -> "(" ^ (pretty e1) ^ " * " ^ (pretty e2) ^ ")"
        | ExprDiv(e1, e2) -> "(" ^ (pretty e1) ^ " / " ^ (pretty e2) ^ ")"
        | ExprNum(n) -> string_of_int n
let rec evaluate p = match p with
        | ExprAdd(e1, e2) -> (evaluate e1) + (evaluate e2)
        | ExprSub(e1, e2) -> (evaluate e1) - (evaluate e2)
        | ExprMul(e1, e2) -> (evaluate e1) * (evaluate e2)
        | ExprDiv(e1, e2) -> (evaluate e1) / (evaluate e2)
        | ExprNum(n) -> n

let main =
        try
                while true do
                        let input = takeInput() in
                        if (input = "" || input = "\n") then (exit 0)
                        else (
                                let p = parse (lexer input) in
                                print_endline (pretty p);
                                print_endline ("= " ^ string_of_int (evaluate p));
                        )
                done
        with
                | End_of_file -> (exit 0)
                | _ -> print_endline "runtime error"; exit 2

