%token <int> INT
%token PLUS TIMES
%token LPAREN RPAREN
%token EOL

%start main
%type <int> main

%%

main:
  | expr EOL
    { $1 }

expr:
  | expr PLUS term
    { $1 + $3 }
  | term
    { $1 }

term:
  | term TIMES factor
    { $1 * $3 }
  | factor
    { $1 }

factor:
  | INT
    { $1 }
  | LPAREN expr RPAREN
    { $2 }
