
%{
   open Ast
   exception UnmatchingError
%}
(*Constants*)
%token <int> INT
%token <char> CHAR
(*Identifiers*)
%token <string> IDENT
(*KeyWords*)
%token BREAK CHARTYPE DELETE ELSE EXTERN IF INTTYPE RETURN STRUCT VOID WHILE (*FOR NEW*) 
(*Operators*)
%token EXCLAM "!"
%token WIGGLE "~"	
%token MIN "-" (* Both unary and binary*)
%token EQUAL "="
%token PLUS "+"
%token STAR "*"
%token SLASH "/"
%token PERCENT "%"
%token SMALLER "<"
%token GREATER ">"
%token LSHIFT "<<"
%token RSHIFT ">>"
%token LEQ "<="
%token GEQ ">="
%token COMPARE "=="
%token NEQ "!="
%token BAND "&"
%token BOR "|"
%token AND "&&"
%token OR "||"

(*Seperator*)
%token LPAREN "("
%token RPAREN ")"
%token COMMA ","
%token SEMI ";"
%token POINT "."
%token LBRACE "{"
%token RBRACE "}"
%token LBRACKET "["
%token RBRACKET "]"

(*EOF*)
%token EOF


%left "||"
%left "&&"
%left "|"
%left "&"
%left COMPARE NEQ
%left SMALLER GREATER LEQ GEQ
%left LSHIFT RSHIFT
%left PLUS MIN
%left STAR SLASH PERCENT
%right UNARY 

(*TODO:HOW CAN WE DO PRECEDENCE?*)

%start program 
%type <uop> unop
%type <exprType> ty
%type <expr list> expr_list
%type <string> attr
%type <expr> expr
%type <statement> else_stmt
%type <statement> stmt
%type <expr> lvalue
%type <statement> assign
%type <statement> varassign
%type <exprType * string> plist_elem
%type <(exprType * string) list> params
%type <exprType * string> struct_elem
%type <global> global
%type <global list> program 

%%
unop:
        | "-"
                {UMin}
        | "~"
                {UWiggle}
        | "!"
                {UExclam}
(*
binop:
        | "+"
                {BPlus}
        | "-"
                {BMin}
        | "*"
                {BStar}
        | "/"
                {BSlash}
        | "%"
                {BPerc}
        | "<"
                {BLess}
        | ">"
                {BMore}
        | "<="
                {BLEQ}
        | ">="
                {BGEQ}
        | "=="
                {BEQ}
        | "!="
                {BNEQ}
        | "&"
                {BBinAND}
        | "|"
                {BBinOR}
        | "&&"
                {BAND}
        | "||"
                {BOR}
        | "<<"
                {BLShift}
        | ">>"
                {BRShift}
*)
ty:
  | VOID
        {TVoid}
  | INTTYPE
        {TInt}
  | CHARTYPE
        {TChar}
  | i = IDENT
        {TIdent(i)}
  | ty "*" 
        {TPoint($1)}

(*expr-parsing*)
expr_list:
        | l = separated_list(COMMA, expr)
                {l}
attr:
  | "." i = IDENT
        {i}
expr:
  | r = IDENT
        { EVar(r) }
  | i = INT
        { EInt(i) }
  | c = CHAR
        { EChar(c)}      
        (*ADD STRING HERE*)
  | left = expr "*" right = expr 
        { EBinOp(BStar, left, right) }
  | left = expr "/" right = expr
        { EBinOp(BSlash, left, right) }
  | left = expr "%" right = expr 
        { EBinOp(BPerc, left, right) }
  | left = expr "+" right = expr 
        { EBinOp(BPlus, left, right) }
  | left = expr "-" right = expr 
        { EBinOp(BMin, left, right) }
  | left = expr "<<" right = expr 
        { EBinOp(BLShift, left, right) }
  | left = expr ">>" right = expr 
        { EBinOp(BRShift, left, right) }
  | left = expr "<" right = expr 
        { EBinOp(BLess, left, right) }
  | left = expr ">" right = expr 
        { EBinOp(BMore, left, right) }
  | left = expr "<=" right = expr 
        { EBinOp(BLEQ, left, right) }
  | left = expr ">=" right = expr
        { EBinOp(BGEQ, left, right) }
  | left = expr "==" right = expr
        { EBinOp(BEQ, left, right) }
  | left = expr "!=" right = expr 
        { EBinOp(BNEQ, left, right) }
  | left = expr "&" right = expr 
        { EBinOp(BBinAND, left, right) }
  | left = expr "|" right = expr 
        { EBinOp(BBinOR, left, right) }
  | left = expr "&&" right = expr 
        { EBinOp(BAND, left, right) }
  | left = expr "||" right = expr 
        { EBinOp(BOR, left, right) } 
  | op = unop e = expr %prec UNARY
        { EUnOp(op, e)}
  | i = IDENT "(" l = expr_list ")"
        {ECall(i, l)}
  | i = IDENT "[" e = expr "]" op = option(attr)
        {EArrayAccess(i, e, op)}
        (*ADD NEW AND DELETE CONSTRUCT*) 
  | "(" e = expr ")"
        { e }

(*expr-statements*)
else_stmt:
  | ELSE s = stmt
        {s}
stmt:
   | v = varassign ";"
        {v}        
   | "{" e = expr "}"
         {SExpr(e)}
   | "{" l = list(stmt) "}"
        {SScope(l)}
   | IF "(" e = expr ")" thn = stmt other = option(else_stmt)
        {SIf(e, thn, other)}
   | WHILE "(" e = expr ")" s = stmt
        {SWhile(e, s)}
   | BREAK ";"
        {SBreak}
   | RETURN value = option(expr) ";"
        {SReturn(value)}
   | DELETE "[" "]" i = IDENT ";"
        {SDelete(i)}
lvalue:
  | i = IDENT
        {EVar(i)}        
  | i = IDENT "[" e=expr "]" op = option(attr)
        {EArrayAccess(i, e, op)}

(*THINK ABOUT THIS, then continue on pprinter*)
assign:
  | i = IDENT "(" el = expr_list ")"
        { SExpr(ECall(i, el)) }
  | lv = lvalue "=" e = expr
        { 
                match lv with
                | EVar(i) -> SVarAssign(i, e) 
                | EArrayAccess(i, index, op) -> SArrayAssign(i, index, op, e)
                | _ -> raise UnmatchingError
        } 
  | lv = lvalue PLUS PLUS
        { 
                match lv with
                | EVar(i) -> SVarAssign(i, EBinOp(BPlus, lv ,EInt(1))) 
                | EArrayAccess(i, e, op) -> SArrayAssign(i, e, op, EBinOp(BPlus, lv ,EInt(1)))
                | _ -> raise UnmatchingError
        }
  | lv = lvalue MIN MIN
        {
                match lv with
                | EVar(i) -> SVarAssign(i, EBinOp(BMin, lv ,EInt(1))) 
                | EArrayAccess(i, e, op) -> SArrayAssign(i, e, op, EBinOp(BMin, lv ,EInt(1)))
                | _ -> raise UnmatchingError
        }

varassign:
  | t = ty i = IDENT "=" e = expr
        {SVarDef(t, i, e)}
  | assign 
        {$1}

plist_elem:
  | t = ty elem = IDENT
        {(t, elem)}
params:
  | separated_list(COMMA, plist_elem)
        {$1}

struct_elem:
  | t = ty i = IDENT ";"
        { (t, i) }

global:
  | t = ty i = IDENT "(" p = params ")" "{" sl = list(stmt) "}"  
        { GFuncDef(t, i, p, SScope(sl)) }
  | EXTERN t = ty i = IDENT "(" p = params ")" ";"
        { GFuncDecl(t, i, p) }
  | t = ty i = IDENT "=" e = expr ";"
        { GVarDef(t, i, e) }
  | EXTERN t = ty i = IDENT ";" 
        { GVarDecl(t, i) }
  | STRUCT i = IDENT "{" sl = list(struct_elem) "}" ";"
        { GStruct(i, sl)}

program:
  | l = list(global) EOF
        {l}
