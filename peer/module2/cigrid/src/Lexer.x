{
module Lexer where

}

%wrapper "posn"
 
 --"/*" ([^\*]|\n)* \*+ ( ([^\/\*]|\n) ([^\*]|\n)* \*+)* "/" 

@notStar = ([^\*]|\n)*
@notComment = ([^\/\*]|\n)
@star = \*+ ( @notComment @notStar \*+)*
@mlCommentBody = @notStar @star
@slCommentBody = [^\n]*\n
@escaped = \\ [nt\\"']
@newline = \' \\"n" \'
@tab = \' \\"t" \'
@backslash = \' \\\\ \'
@apo = \' \\\' \'
@qoute = \' \\\" \'
$spec = [\\'"]      
$charRange = [\ -\~]
@allowedChars = ($charRange # $spec) 
@charLit = \' @allowedChars \'
@strLit = \" (@allowedChars|@escaped)* \"



tokens :-
    $white+                     ;
    "#" @slCommentBody          ;
    "//" @slCommentBody         ;
    "/*" @mlCommentBody "/"    ; 
    [\(\)\[\]\{\}\=\;\,\.]      { tok (\p s -> TokDelim p (head s)) }
    0|[1-9][0-9]*               { tok (\p s -> TokCUInt p (read s)) }
    0[xX][0-9a-fA-F]+           { tok (\p s -> TokCUInt p (read s)) }
    @strLit                     { tok (\p s -> TokCStr p (init $ tail s)) }
    @charLit                    { tok (\p s -> TokCChar p (head $ tail s)) }
    @newline                    { tok (\p _ -> TokCChar p '\n')}
    @tab                        { tok (\p _ -> TokCChar p '\t') }
    @backslash                  { tok (\p _ -> TokCChar p '\\') }
    @apo                        { tok (\p _ -> TokCChar p '\'') }
    @qoute                      { tok (\p _ -> TokCChar p '\"') }
    break                       { tok (\p s -> TokKeyw p s) }
    char                        { tok (\p s -> TokKeyw p s) }
    delete                      { tok (\p s -> TokKeyw p s) }
    else                        { tok (\p s -> TokKeyw p s) }
    extern                      { tok (\p s -> TokKeyw p s) }
    for                         { tok (\p s -> TokKeyw p s) }
    if                          { tok (\p s -> TokKeyw p s) }
    int                         { tok (\p s -> TokKeyw p s) }
    new                         { tok (\p s -> TokKeyw p s) }
    return                      { tok (\p s -> TokKeyw p s) }
    struct                      { tok (\p s -> TokKeyw p s) }
    void                        { tok (\p s -> TokKeyw p s) }
    while                       { tok (\p s -> TokKeyw p s) }
    "!="                        { tok (\p s -> TokOp p s) }
    "=="                        { tok (\p s -> TokOp p s) }
    "&&"                        { tok (\p s -> TokOp p s) }
    "||"                        { tok (\p s -> TokOp p s) }
    ">>"                        { tok (\p s -> TokOp p s) }
    "<<"                        { tok (\p s -> TokOp p s) }
    "<="                        { tok (\p s -> TokOp p s) }
    ">="                        { tok (\p s -> TokOp p s) }
    "<"                         { tok (\p s -> TokOp p s) }
    ">"                         { tok (\p s -> TokOp p s) }
    "++"                        { tok (\p s -> TokOp p s) }
    "--"                        { tok (\p s -> TokOp p s) }
    "&"                         { tok (\p s -> TokOp p s) }
    "|"                         { tok (\p s -> TokOp p s) }
    "+"                         { tok (\p s -> TokOp p s) }
    "-"                         { tok (\p s -> TokOp p s) }
    "!"                         { tok (\p s -> TokOp p s) }
    "~"                         { tok (\p s -> TokOp p s) }
    "*"                         { tok (\p s -> TokOp p s) }
    "/"                         { tok (\p s -> TokOp p s) }
    "%"                         { tok (\p s -> TokOp p s) }
    [\_a-zA-Z][\_a-zA-Z0-9]*    { tok (\p s -> TokIdent p s) }


{

tok f p s = f p s

data Token = TokIdent AlexPosn String | TokCUInt AlexPosn Int | TokCChar AlexPosn Char
    | TokCStr AlexPosn String | TokKeyw AlexPosn String | TokOp AlexPosn String | TokDelim AlexPosn Char
    deriving (Eq, Show)

token_posn (TokIdent p _) = p
token_posn (TokCUInt p _) = p
token_posn (TokCChar p _) = p
token_posn (TokCStr p _) = p
token_posn (TokKeyw p _) = p
token_posn (TokOp p _) = p
token_posn (TokDelim p _) = p


alexScanTokens' :: String -> Either (Int,Int) [Token]
alexScanTokens' str = go (alexStartPos,'\n',[],str)
    where go inp@(pos,_,_,str) = case alexScan inp 0 of
            AlexEOF -> Right []
            AlexError ((AlexPn _ line column),_,_,_) -> Left $ (line, column)
            AlexSkip inp' len -> go inp'
            AlexToken inp' len act -> case go inp' of
                    Right toks -> Right $ act pos (take len str) : toks
                    Left err -> Left err

}
