%token <int> INT
%token PLUS  "+"
%token MINUS "-"
%token TIMES "*"
%token DIV   "/"
%token LPAREN "("
%token RPAREN ")"
%token EOL

%left "+" "-"
%left "*" "/"
%nonassoc UMINUS

%start main
%type <int> main

%%

main:
  | e = expr EOL
    { e }

expr:
  | i = INT
    { i }
  | "(" e = expr ")"
    { e }
  | e1 = expr "+" e2 = expr
    { e1 + e2 }
  | e1 = expr "-" e2 = expr
    { e1 - e2 }
  | e1 = expr "*" e2 = expr
    { e1 * e2 }
  | e1 = expr DIV e2 = expr
    { e1 / e2 }
  | "-" e = expr %prec UMINUS
    { - e }
