{
module Parser where
import Lexer
}

%name parse
%tokentype { Token }
%monad { Either (Int,Int) }
%error { parseError }

-- Token interpretation

%token 
    identifier                              { TokIdent _ $$ }
    constInt                                { TokCUInt _ $$ }
    constChar                               { TokCChar _ $$ }
    constString                             { TokCStr _ $$ }
    break                                   { TokKeyw _ "break" }
    char                                    { TokKeyw _ "char" }
    delete                                  { TokKeyw _ "delete" }
    else                                    { TokKeyw _ "else" }
    extern                                  { TokKeyw _ "extern" }
    for                                     { TokKeyw _ "for" }
    if                                      { TokKeyw _ "if" }
    int                                     { TokKeyw _ "int" }
    new                                     { TokKeyw _ "new" }
    return                                  { TokKeyw _ "return" }
    struct                                  { TokKeyw _ "struct" }
    void                                    { TokKeyw _ "void" }
    while                                   { TokKeyw _ "while" }
    "/"                                     { TokOp _ "/" }
    "%"                                     { TokOp _ "%" }
    "+"                                     { TokOp _ "+" }
    "-"                                     { TokOp _ "-" }
    "<<"                                    { TokOp _ "<<" }
    ">>"                                    { TokOp _ ">>" }
    "<"                                     { TokOp _ "<" }
    ">"                                     { TokOp _ ">" }
    "<="                                    { TokOp _ "<=" }
    ">="                                    { TokOp _ ">=" }
    "=="                                    { TokOp _ "==" }
    "!="                                    { TokOp _ "!=" }
    "&"                                     { TokOp _ "&" }
    "|"                                     { TokOp _ "|" }
    "&&"                                    { TokOp _ "&&" }
    "||"                                    { TokOp _ "||" }
    "*"                                     { TokOp _ "*" }
    "++"                                    { TokOp _ "++" }
    "--"                                    { TokOp _ "--" }
    "!"                                     { TokOp _ "!" }
    "~"                                     { TokOp _ "~" }
    '='                                     { TokDelim _ '=' }
    '('                                     { TokDelim _ '(' }
    ')'                                     { TokDelim _ ')' }
    '['                                     { TokDelim _ '[' }
    ']'                                     { TokDelim _ ']' }
    '{'                                     { TokDelim _ '{' }
    '}'                                     { TokDelim _ '}' }
    ';'                                     { TokDelim _ ';' }
    ','                                     { TokDelim _ ',' }
    '.'                                     { TokDelim _ '.' }

-- Opreator associativity
%left "||"
%left "&&"
%left "|"
%left "&"
%left "==" "!="
%left "<" ">" ">=" "<="
%left "<<" ">>"
%left "+" "-"
%left "*" "/" "%"
%left NEG 
%right "!" "~"
%% -- Production rules



-- Unop
Progr : ProgrList                                           { Right $ Program $ reverse $1 }

ProgrList : {- empty -}                                     { [] }
          | ProgrList Glob                                  { $2 : $1 }

Glob : Ty identifier '(' Params ')' '{' StmtList '}'        { GFuncDef $1 $2 $4 (SScope $ reverse $7) }
     | extern Ty identifier '(' Params ')' ';'              { GFuncDecl $2 $3 $5 }
     | Ty identifier '=' Expr ';'                           { GVarDef (tokToPnTuple $3) $1 $2 $4 }
     | extern Ty identifier ';'                             { GVarDecl $2 $3 }
     | struct identifier '{' StructVars '}' ';'             { GStruct $2 (reverse $4) }

StructVars : {- empty -}                                    { [] }
           | StructVars Ty identifier ';'                   { ($2,$3) : $1 } 

Params : {- empty -}                                        { [] }
       | Ty identifier ParamsList                           { ($1,$2) : reverse $3 }

ParamsList : {- empty -}                                    { [] }
           | ParamsList ',' Ty identifier                   { ($3,$4) : $1 }

Varassign : Ty identifier '=' Expr                          { SVarDef (tokToPnTuple $3) $1 $2 $4 }
          | Assign                                          { $1 }

Assign : identifier '(' ExprArgs ')'                        { SExpr (tokToPnTuple $2) $ ECall $1 $3 }
       | identifier '=' Expr                                { SVarAssign (tokToPnTuple $2) $1 $3 }
       | identifier "++"                                    { SVarAssign (tokToPnTuple $2) $1 (EBinOp BPlus (EVar $1) (EInt 1)) }
       | identifier "--"                                    { SVarAssign (tokToPnTuple $2) $1 (EBinOp BMinus (EVar $1) (EInt 1)) }
       | identifier '[' Expr ']' ArrStructAccess '=' Expr   { SArrayAssign (tokToPnTuple $2) $1 $3 $5 $7 }
       | identifier '[' Expr ']' ArrStructAccess "++"       { SArrayAssign (tokToPnTuple $2) $1 $3 $5 (EBinOp BPlus (EArrayAccess $1 $3 $5) (EInt 1)) }
       | identifier '[' Expr ']' ArrStructAccess "--"       { SArrayAssign (tokToPnTuple $2) $1 $3 $5 (EBinOp BMinus (EArrayAccess $1 $3 $5) (EInt 1)) }



--Lvalue : identifier                                 { $1 }
--       | identifier '[' Expr ']' ArrStructAccess    {  }    

Stmt : Varassign ';'                          { $1 }
     | '{' StmtList '}'                       { SScope $ reverse $2 }
     | if '(' Expr ')' Stmt Else            { SIf (tokToPnTuple $1) $3 $5 $6 }
     | while '(' Expr ')' Stmt              { SWhile (tokToPnTuple $1) $3 $5 }
     | break ';'                            { SBreak (tokToPnTuple $1) }  
     | return RetStmt ';'                   { SReturn (tokToPnTuple $1) $2 }
     | delete '[' ']' identifier ';'        { SDelete (tokToPnTuple $1) $4 }
     | for '(' Varassign ';' Expr ';' Assign ')' Stmt     {SScope [$3, SWhile (tokToPnTuple $1) $5 (SScope [$9,$7])]}

RetStmt : {- empty -}                         { Nothing }
        | Expr                                { Just $1 }

Else : {- empty -}                            { Nothing }
     | else Stmt                            { Just $2 }

StmtList : {- empty -}                        { [] }
         | StmtList Stmt                      { $2 : $1 }

Expr : identifier                               { EVar $1 }
     | constInt                                 { EInt $1 }
     | constChar                                { EChar $1 }
     | constString                              { EString $1 }
     | Expr "*" Expr                            { EBinOp BTimes $1 $3 }
     | Expr "/" Expr                            { EBinOp BDiv $1 $3 }
     | Expr "%" Expr                            { EBinOp BMod $1 $3 }
     | Expr "+" Expr                            { EBinOp BPlus $1 $3 }
     | Expr "-" Expr                            { EBinOp BMinus $1 $3 }
     | Expr "<<" Expr                           { EBinOp BShiftL $1 $3 }
     | Expr ">>" Expr                           { EBinOp BShiftR $1 $3 }
     | Expr "<" Expr                            { EBinOp BLess $1 $3 }
     | Expr ">" Expr                            { EBinOp BGreater $1 $3 }
     | Expr "<=" Expr                           { EBinOp BLessOrEq $1 $3 }
     | Expr ">=" Expr                           { EBinOp BGreaterOrEq $1 $3 }
     | Expr "==" Expr                           { EBinOp BEq $1 $3 }
     | Expr "!=" Expr                           { EBinOp BNotEq $1 $3 }
     | Expr "&" Expr                            { EBinOp BBWAnd $1 $3 }
     | Expr "|" Expr                            { EBinOp BBWOr $1 $3 }
     | Expr "&&" Expr                           { EBinOp BAnd $1 $3 }
     | Expr "||" Expr                           { EBinOp BOr $1 $3 }
     | "-" Expr %prec NEG                       { EUnOp UMinus $2 }
     | "!" Expr                                 { EUnOp UNot $2}
     | "~" Expr                                 { EUnOp UInverse $2 }  
     | identifier '(' ExprArgs ')'              { ECall $1 $3 }
     | new Ty '[' Expr ']'                      { ENew $2 $4 }
     | identifier '[' Expr ']' ArrStructAccess  { EArrayAccess $1 $3 $5 }
     | '(' Expr ')'                             { $2 }

ExprArgs : {- empty -}                          { [] }
         | Expr ExprArgsList                    { $1 : reverse $2 }

ExprArgsList : {- empty -}                      { [] }
             | ExprArgsList ',' Expr            { $3 : $1 }

ArrStructAccess : {- empty -}                   { Nothing }
                | '.' identifier                { Just $2 }

Ty : void                                   { TVoid }
   | int                                    { TInt }
   | char                                   { TChar }
   | identifier                               { TIdent $1 }
   | Ty "*"                                   { TPoint $1 }



{





-- Simple error function
--parseError :: [Token] -> a
--parseError [] = error "Parse error"
--parseError (t:_) = error $ "Parse error" ++ (show t)

parseError (tok:_) = Left $ tokToPnTuple tok

tokToPnTuple tok = (l, c)  
    where AlexPn _ l c = token_posn tok

-- Error with linenos
--happyError :: [Token] -> a
--happyError tokens = errorWithoutStackTrace $ "Parsing error at " ++ line ++ "\n"
    --where line = case tokens of
            --[] -> "EOF"
            --tok:_ -> "line " ++ show l ++ " and column " ++ show c
                --where AlexPn _ l c = token_posn tok 


-- Pretty printing helpfunctions.
textStr str = '"':(str++"\"")
textChar c = '\'':(c' ++ "'")
    where c' = case c of
            '\n' -> "\\n"
            '\t' -> "\\t"
            '\\' -> "\\\\"
            '\'' -> "\\'"
            '\"' -> "\\\""
            x -> [x]
textList [] = ""
textList [x] = (show x)
textList (x:xs) = (show x) ++ ' ':(textList xs)
textParams [] = ""
textParams (tup:r) = (show tup) ++ (textParams r)

-- AST datatype

data UnaryOp = UNot | UInverse | UMinus deriving Eq
data BinaryOp = BTimes | BDiv | BMod | BPlus | BMinus | BShiftL | BShiftR 
    | BLess | BGreater 
    | BLessOrEq | BGreaterOrEq | BEq | BNotEq | BBWAnd | BBWOr | BAnd | BOr
    deriving Eq
data Expression = EVar String 
    | EInt Int 
    | EChar Char 
    | EString String 
    | EBinOp BinaryOp Expression Expression
    | EUnOp UnaryOp Expression 
    | ECall String [Expression] 
    | ENew Type Expression 
    | EArrayAccess String Expression (Maybe String)
    deriving Eq
data Type = TVoid 
    | TInt 
    | TChar 
    | TIdent String 
    | TPoint Type 
    | TStructMember String Type deriving Eq
data Statement = SExpr (Int,Int) Expression 
    | SVarDef (Int,Int) Type String Expression 
    | SVarAssign (Int,Int) String Expression
    | SArrayAssign (Int,Int) String Expression (Maybe String) Expression 
    | SScope [Statement] 
    | SIf (Int,Int) Expression Statement (Maybe Statement) 
    | SWhile (Int,Int) Expression Statement 
    | SBreak (Int,Int)
    | SReturn (Int,Int) (Maybe Expression) 
    | SDelete (Int,Int) String
    deriving Eq
data Global = GFuncDef Type String [(Type, String)] Statement 
    | GFuncDecl Type String [(Type, String)]
    | GVarDef (Int,Int) Type String Expression 
    | GVarDecl Type String 
    | GStruct String [(Type, String)]
    deriving Eq
newtype Program = Program [Global] deriving Eq

data AST = Prog Program | Glob Global | Stmt Statement | Expr Expression 

-- Pretty 

instance Show UnaryOp where
    show UNot = "!"
    show UInverse = "~"
    show UMinus = "-"
instance Show BinaryOp where
    show BTimes = "*"
    show BDiv = "/"
    show BMod = "%"
    show BPlus = "+"
    show BMinus = "-"
    show BShiftL = "<<"
    show BShiftR = ">>"
    show BLess = "<"
    show BGreater = ">"
    show BLessOrEq = "<="
    show BGreaterOrEq = ">="
    show BEq = "=="
    show BNotEq = "!="
    show BBWAnd = "&"
    show BBWOr = "|"
    show BAnd = "&&"
    show BOr = "||"
instance Show Expression where
    show (EVar str) = "EVar("++ (textStr str) ++")"
    show (EInt i) = "EInt("++(show i)++")"
    show (EChar c) = "EChar("++(textChar c)++")"
    show (EString str) = "EString("++ (textStr str) ++")"
    show (EBinOp op e1 e2) = "EBinOp(" ++ (show op) ++ ',':(show e1) ++ ',':(show e2) ++ ")"
    show (EUnOp op e) = "EUnOp(" ++ (show op) ++ ',':(show e) ++ ")"
    show (ECall str args) = "ECall(" ++ (textStr str) ++ ",{" ++ (textList args) ++ "})"
    show (ENew ty e) = "ENew(" ++ (show ty) ++ ',':(show e) ++ ")"
    show (EArrayAccess str e (Just s)) = "EArrayAccess(" ++ (textStr str) ++ ',':(show e) ++ ',':(textStr s) ++ ")"
    show (EArrayAccess str e Nothing) = "EArrayAccess(" ++ (textStr str) ++ ',':(show e) ++ ",)"
instance Show Type where
    show TVoid = "TVoid"
    show TInt = "TInt"
    show TChar = "TChar"
    show (TIdent str) = "TIdent("++ (textStr str) ++ ")"
    show (TPoint t) = "TPoint("++ (show t) ++")"
instance Show Statement where
    show (SExpr _ e) = "SExpr(" ++ (show e) ++ ")"
    show (SVarDef _ t str e) = "SVarDef(" ++ (show t) ++ ',':(textStr str) ++ ',':(show e) ++ ")"
    show (SVarAssign _ str e) = "SVarAssign("++ (textStr str) ++ ',':(show e) ++ ")"
    show (SArrayAssign _ str e1 (Just s) e2) = "SArrayAssign(" ++ (textStr str) ++ ',':(show e1) ++ ',':(textStr s) ++ ',':(show e2) ++")"
    show (SArrayAssign _ str e1 Nothing e2) = "SArrayAssign(" ++ (textStr str) ++ ',':(show e1) ++ ',':',':(show e2) ++")"
    show (SScope slist) = "SScope(" ++ "{" ++ (textList slist) ++ "}" ++ ")"
    show (SIf _ e s (Just js)) = "SIf(" ++ (show e) ++ ',':(show s) ++ ',':(show js) ++ ")"
    show (SIf _ e s Nothing) = "SIf(" ++ (show e) ++ ',':(show s) ++ ",)"
    show (SWhile _ e stmt) = "SWhile(" ++ (show e) ++ ',':(show stmt) ++ ")"
    show (SBreak _) = "SBreak"
    show (SReturn _ (Just e)) = "SReturn(" ++ (show e) ++ ")"
    show (SReturn _ Nothing) = "SReturn()"
    show (SDelete _ str) = "SDelete(" ++ (textStr str) ++ ")" 
instance Show Global where
    show (GFuncDef t str params stmt) = "GFuncDef(" ++ (show t) ++ ',':(textStr str) ++ ",{" ++ (textParams params) ++ "}" ++ ',':(show stmt) ++ ")"
    show (GFuncDecl t str params) = "GFuncDecl(" ++ (show t) ++ ',':(textStr str) ++ ",{" ++ (textParams params) ++ "}" ++ ")"
    show (GVarDef _ t str e) = "GVarDef(" ++ (show t) ++ ',':(textStr str) ++ ',':(show e) ++ ")"
    show (GVarDecl t str) = "GVarDecl(" ++ (show t) ++ ',':(textStr str) ++ ")"
    show (GStruct str params) = "GStruct(" ++ (textStr str) ++ ",{" ++ (textParams params) ++ "}" ++ ")"
instance Show Program where    
    show (Program globs) = textList globs
    


}

