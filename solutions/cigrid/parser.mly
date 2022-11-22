// open Ast_types -> produces error
%{
  open Ast_types
  open Token

  (* function for handling a lexing issue that has occured, always exits *)
  let parse_error exit_code msg =
    let () = Printf.printf ("%s at --> exit %d\n") msg exit_code in
      exit exit_code
%}

%token BREAK                  (* KEYWORDS *)
// %token DELETE "delete"
%token ELSE
%token EXTERN
// %token FOR
%token IF
%token RETURN
// %token NEW
// %token STRUCT
// %token TSTRING
%token WHILE
%token ADD                    (* GENERAL CHARACTERS *)
%token ADDSUGAR
%token SUB
%token SUBSUGAR
%token MUL
%token DIV
%token <string> IDENT                  (* IDENTIFIER *)
%token MOD
%token LT
%token GT
%token LTEQ
%token GTEQ
%token ASSIGN
%token EQ
%token NEQ
%token BITAND
%token BITOR
%token AND
%token OR
%token UMINUS "-" // HOW WOULD THIS WORK WITH SUB?
%token NOT
%token TILDE
// %token LBRACK
// %token RBRACK
%token LPAREN
%token RPAREN
%token LCURLY
%token RCURLY
%token COMMA
%token SEMICOLON
%token TVOID                  (* TYPES *)
%token TINT
%token TCHAR
%token <int> DECINT           (* VALUES *)
%token <char> CHAR
%token EOF                    (* SPECIAL CHARACTER *)

// %nonassoc UMINUS

%left OR
%left AND
%left BITOR
%left BITAND
%left EQ NEQ
%left LT GT LTEQ GTEQ
%left ADD SUB
%left MOD DIV MUL

%start program
%type <p> program

// ocamlbuild -use-menhir -menhir "menhir --external-tokens Token" cigrid.native

%%

program:
  | ast = global*; EOF { Prog(ast) }

unop:
  | NOT  { UnopNot }
  | TILDE  { UnopTilde }
  | UMINUS  { UnopMinus }

// binop: 
  // | MUL  { BopMul }
  // | DIV  { BopDiv }
  // | MOD  { BopMod }
  // | ADD { BopAdd }
  // | SUB  { BopSub }
  // | LT  { BopLt }
  // | GT  { BopGt }
  // | LTEQ { BopLteq }
  // | GTEQ { BopGteq }
  // | EQ { BopEqto }
  // | NEQ { BopNeq }
  // | BITAND  { BopBitAnd }
  // | BITOR  { BopBitOr }
  // | AND { BopAnd }
  // | OR { BopOr }
  
typ:
  | TVOID { TVoid }
  | TINT  { TInt }
  | TCHAR { TChar }
  | str = IDENT { TIdent(str) }
  // | t = typ; "*" { TPoint(t) }
  
expr:
  | str = IDENT { EVar(str) }
  | num = DECINT { EInt(num) }
  | c = CHAR { EChar(c) }
  // | s = STRING { EString(s) }
  | e1 = expr; MUL; e2 = expr { EBinOp(BopMul, e1, e2) }
  | e1 = expr; DIV; e2 = expr { EBinOp(BopDiv, e1, e2) }
  | e1 = expr; MOD; e2 = expr { EBinOp(BopMod, e1, e2) }
  | e1 = expr; ADD; e2 = expr { EBinOp(BopAdd, e1, e2) }
  | e1 = expr; SUB; e2 = expr { EBinOp(BopSub, e1, e2) }
  | e1 = expr; LT; e2 = expr { EBinOp(BopLt, e1, e2) }
  | e1 = expr; GT; e2 = expr { EBinOp(BopGt, e1, e2) }
  | e1 = expr; LTEQ; e2 = expr { EBinOp(BopLteq, e1, e2) }
  | e1 = expr; GTEQ; e2 = expr { EBinOp(BopGteq, e1, e2) }
  | e1 = expr; EQ; e2 = expr { EBinOp(BopEqto, e1, e2) }
  | e1 = expr; NEQ; e2 = expr { EBinOp(BopNeq, e1, e2) }
  | e1 = expr; BITAND; e2 = expr { EBinOp(BopBitAnd, e1, e2) }
  | e1 = expr; BITOR; e2 = expr { EBinOp(BopBitOr, e1, e2) }
  | e1 = expr; AND; e2 = expr { EBinOp(BopAnd, e1, e2) }
  | e1 = expr; OR; e2 = expr { EBinOp(BopOr, e1, e2) }
  | uop = unop; e = expr { EUnOp(uop, e) }
  (* TESTA 0,1,2 argument *)
  | i = IDENT; LPAREN; e_list = separated_list(COMMA, expr); RPAREN { ECall(i, e_list) }
  // | "new"; typ; "["; expr; "]" {  }
  // | IDENT "[" expr "]" ["." IDENT]
  | LPAREN; e = expr; RPAREN { e }

stmt:
  | var_assign = varassign; SEMICOLON { var_assign }
  | LCURLY; stmt_list = stmt*; RCURLY { SScope(stmt_list) }
  | IF; LPAREN; e = expr; RPAREN; if_s = stmt; ELSE; else_s = stmt 
    { SIf(e, if_s, Some else_s) }
  | IF; LPAREN; e = expr; RPAREN; if_s = stmt 
    { SIf(e, if_s, None) }
  | WHILE; LPAREN; e = expr; RPAREN; s = stmt { SWhile(e, s) }
  | BREAK; SEMICOLON; { SBreak }
  | RETURN; e = option(expr); SEMICOLON 
  { 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  }
  // | "delete" "[" "]" IDENT SEMICOLON
  // | "for" LBRACK varassign SEMICOLON expr SEMICOLON assign RBRACK stmt
  
lvalue:
  | str = IDENT { str }
  // | IDENT "[" expr "]" [ "." IDENT ]

assign:
  | i = IDENT; LPAREN; e_list = separated_list(COMMA, expr); RPAREN { SExpr(ECall(i, e_list)) }
  | e_var = lvalue; ASSIGN; e = expr { SVarAssign(e_var, e) }
  | ident = lvalue; ADDSUGAR { SVarAssign(ident, EBinOp(BopAdd, EVar(ident), EInt(1))) }
  | ident = lvalue; SUBSUGAR { SVarAssign(ident, EBinOp(BopSub, EVar(ident), EInt(1))) }

varassign:
  | t = typ; i = IDENT; ASSIGN; e = expr { SVarDef(t, i, e) }
  | a = assign { a }

params:
  | p_list = separated_list(COMMA, pair(typ, IDENT)) { p_list }

global:
  | t = typ; i = IDENT; LPAREN; p = params; RPAREN; LCURLY; stmt_list = stmt*; RCURLY
    { GFuncDef(t, i, p, SScope(stmt_list)) }
  | EXTERN; t = typ; i = IDENT; LPAREN; p = params; RPAREN; SEMICOLON
    { GFuncDecl(t, i, p) }
  // | "extern" ty Ident LBRACK params RBRACK SEMICOLON
  // | ty IDENT  EQ expr SEMICOLON
  // | "extern" ty IDENT  SEMICOLON
  // | "struct" IDENT LCURLY { ty Ident SEMICOLON } RCURLY SEMICOLON
