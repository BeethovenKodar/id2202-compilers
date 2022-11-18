// open Ast_types -> produces error
%{


  (* function for handling a lexing issue that has occured, always exits *)
  let parse_error exit_code msg =
    let () = Printf.printf ("%s at --> exit %d\n") msg exit_code in
      exit exit_code
%}

%token BREAK "break"           (* KEYWORDS *)
(* %token DELETE "delete" *)
%token ELSE "else"
// %token EXTERN "extern"
// %token FOR "for"
%token IF "if"
%token RETURN "return"
(* %token NEW *)
// %token STRUCT "struct"
%token TVOID "void"            (* TYPES *)
%token TINT "int"
%token TCHAR "char"
// %token TSTRING "string"
%token WHILE "while"
%token ADD "+"                 (* GENERAL CHARACTERS *)
%token ADD1 "++"
%token SUB "-"
%token SUB1 "--"
%token MUL "*"
%token DIV "/"
%token <string> IDENT          (* IDENTIFIER *)
%token MOD "%"
%token LT "<"
%token GT ">"
%token LTE "<="
%token GTE ">="
%token ASSIGN "="
%token EQ "=="
%token NEQ "!="
%token BITAND "&"
%token BITOR "|"
%token AND "&&"
%token OR "||"
// %token UMINUS "-" HOW WOULD THIS WORK WITH SUB?
%token NOT "!"
%token TILDE "~"
// %token LBRACK "["
// %token RBRACK "]"
%token LPAREN "("
%token RPAREN ")"
%token LCURLY "{"
%token RCURLY "}"
%token COMMA ","
%token SEMICOLON ";"
%token <int> DECINT            (* TYPES *)
%token <char> CHAR
%token EOF                     (* SPECIAL CHARACTER *)

%left "+" "-"
%left "*" "/"
// %nonassoc UMINUS

%start program
%type <Ast_types.p> program

// ocamlbuild -use-menhir -menhir "menhir --external-tokens Token" cigrid.native

%%

program:
  | ast = global EOF; { ast }

unop:
  | "!"  { UnopNot }
  | "~"  { UnopTilde }
  | "-"  { UnopMinus }

binop: 
  | "+"  { BopAdd }
  | "-"  { BopSub }
  | "*"  { BopMul }
  | "/"  { BopDiv }
  | "%"  { BopMod }
  | "<"  { BopLt }
  | ">"  { BopGt }
  | "<=" { BopLteq }
  | ">=" { BopGteq }
  | "==" { BopEqto }
  | "!=" { BopNeq }
  | "&"  { BopBitAnd }
  | "|"  { BopBitOr }
  | "&&" { BopAnd }
  | "||" { BopOr }
  
typ:
  | "void" { TVoid }
  | "int"  { TInt }
  | "char" { TChar }
  | str = IDENT 
    { TIdent(str) }
  // | typ"*"
  
expr:
  | str = IDENT { EVar(str) }
  | num = DECINT { EInt(num) }
  | c = CHAR { EChar(c) }
  // | s = STRING { EString(s) }
  | e1 = expr; bop = binop; e2 = expr { EBinOp(bop, e1, e2) }
  | uop = unop; e = expr { EUnOp(uop, e)}
  // | i = IDENT "(" e_list = list(e = expr; "," { e }) ")"
  | i = IDENT; "("; e_list = separated_list(",", expr); ")" (* TESTA 0,1,2 argument *)
    { ECall(i, e_list) }
  // | "new" typ"[" expr "]"
  // | IDENT "[" expr "]" ["." IDENT]
  | "("; e = expr; ")" { e }
  
stmt:
  | stmt = varassign ";" { stmt }
  | "{"; stmt_list = stmt*; "}" { SScope(stmt_list) }
  | "if"; "("; e = expr; ")"; if_s = stmt; has_else = "else"?; else_s = stmt?
  { 
    match has_else with 
    | Some has_else -> 
      begin match else_s with
      | Some else_s -> 
        SIf(e, if_s, Some else_s)
      | None -> 
        let msg = "Parse error: No else stmt though \"else\" clause provided" in
        parse_error 1 msg
      end
    | None ->
      begin match else_s with
      | None -> SIf(e, if_s, None)
      | Some else_s ->
        let msg = "Parse error: No else clause found for else stmt" in
        parse_error 1 msg
      end
  }
  | "while"; "("; e = expr; ")"; s = stmt { SWhile(e, s) }
  | "break"; ";"; { SBreak }
  | "return"; e = option(expr); ";" 
  { 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  }
  // | "delete" "[" "]" IDENT ";"
  // | "for" "(" varassign ";" expr ";" assign ")" stmt
  
lvalue:
  | str = IDENT; { EVar(str) }
  // | IDENT "[" expr "]" [ "." IDENT ]

assign:
  | i = IDENT; "("; e_list = separated_list(",", expr); ")" { ECall(i, e_list) }
  | e_var = lvalue; "="; e = expr { SVarAssign(e_var, e) }
  | ident = lvalue; "++" { EBinOp("+", ident, EInt(1)) }
  | ident = lvalue; "--" { EBinOp("-", ident, EInt(1)) }

varassign:
  | t = typ; i = IDENT; "="; e = expr { SVarAssign(i, e) }
  | a = assign { a }

params:
  | p_list = separated_list(",", pair(typ, IDENT)) { p_list }

global:
  | t = typ; i = IDENT; "("; p = params; ")"; "{"; stmt_list = stmt*; "}";
    { GFuncDef(t, i, p, stmt_list) }
  // | "extern" ty Ident "(" params ")" ";"
  // | ty IDENT  "=" expr ";"
  // | "extern" ty IDENT  ";"
  // | "struct" IDENT "{" { ty Ident ";" } "}" ";"
