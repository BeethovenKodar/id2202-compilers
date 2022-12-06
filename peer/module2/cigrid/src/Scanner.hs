module Scanner where
    
    import Data.Char(isDigit, isAlpha)
    
    data Keyword = KBreak | KChar | KDelete | KElse | KExtern | KFor | KIf | KInt | KNew | KReturn | KStruct | KVoid | KWhile deriving (Eq,Show)
    data Constant = ConstStr String | ConstChar Char | ConstInt Integer deriving (Eq,Show)
    data Operator = Minus | Times | Div | Mod | Plus | ShiftL | ShiftR | Less | Greater | LessOrEq | GreaterOrEq | Eq | NotEq | BWAnd | BWOr | And | Or deriving (Eq,Show)
    --data Operator = Binary BinaryOp
    data Seperator = ParL | ParR | CurlyBL | CurlyBR | SquareBL | SquareBR | Star | SemiCol | Comma deriving (Eq, Show)

    data Token = TokIdentifier String | TokKeyword Keyword | TokConstant Constant | TokOperator Operator | TokSeperator Seperator | TokEof deriving (Eq, Show)

    type ScannerValue = [Token]
    -- S0 - initiala tillståndet. Har följande transitioner:
    --      digit -> S1 / nothing
    --      whitespace -> S2 / nothing
    --      letter -> S3 / nothing
    -- S1 - siffertillståndet. Har följande transitioner:
    --      digit -> S1 / TokConst ConstInt Int
    --      whitespace -> S2 / TokConst ConstInt Int
    --      seperator -> S4 / TokConst ConstInt Int
    -- S2 - blankstegstillståndet. Har följande transitioner:
    --      digit -> S1 / nothing
    --      letter -> S3 / nothing
    --      whitespace -> S2 / nothing
    --      seperator -> S4 / nothing
    -- S3 - bokstavstillståndet. Har följande transitioner:
    --      letter -> S3 / nothing
    --      whitespace -> S2 / TokConst
    --      seperator -> S4 / TokConst
    -- S4 - avskiljartillståndet. Har följande transitioner:
    --      digit -> S1 / TokSeperator
    --      whitespace -> S2 / TokSeperator
    --      letter -> S3 / TokSeperator
    data ScannerState = S0 | S1 | S2 | S3 | S4
    
    newtype LexError = LexError String
    instance Show LexError where
        show (LexError str) = "LexError: "++str
   
    isOperator :: Char -> Bool
    isOperator char = char `elem` "+-/*%<>=!|&"
    isWS :: Char -> Bool
    isWS char = char `elem` " \t\n\r"
    isSep :: Char -> Bool
    isSep char = char `elem` "(){}[];,"

    readNumber :: String -> String ->Either LexError (Token, String)
    readNumber (char:rest) acc 
        | isDigit char = readNumber rest (char:acc)
        | isSep char || isOperator char || isWS char = Right
            (TokConstant $ ConstInt (read $ reverse acc :: Integer), char:rest)
    readNumber (char:_) _ = Left $ LexError $ "Unidentified character in sequence: "++[char]
    readNumber [] acc = Right
            (TokConstant $ ConstInt (read $ reverse acc :: Integer), [])

    matchStr :: String -> Token
    matchStr "break" = TokKeyword KBreak 
    matchStr "char" = TokKeyword KChar
    matchStr "delete" = TokKeyword KDelete
    matchStr "else" = TokKeyword KElse
    matchStr "extern" = TokKeyword KExtern
    matchStr "for" = TokKeyword KFor
    matchStr "if" = TokKeyword KIf
    matchStr "int" = TokKeyword KInt
    matchStr "new" = TokKeyword KNew
    matchStr "return" = TokKeyword KReturn
    matchStr "struct" = TokKeyword KStruct
    matchStr "void" = TokKeyword KVoid
    matchStr "while" = TokKeyword KWhile
    matchStr str = TokIdentifier str
    
    readStr :: String -> String -> Either LexError (Token, String)
    readStr str@(char:rest) acc 
        | isAlpha char || isDigit char || char == '_' = readStr rest (char:acc)
        | isSep char || isWS char || isOperator char = Right (matchStr $ reverse acc, str)
    readStr _ _ = Left $ LexError "Unidentified Error"

    readTilNL :: String -> String
    readTilNL ('\r':'\n':rest) = rest
    readTilNL ('\n':rest) = rest
    readTilNL ('\r':rest) = rest
    readTilNL (_:rest) = readTilNL rest
    readTilNL _ = []

    readTilComEnd :: String -> String
    readTilComEnd ('*':'/':rest) = rest
    readTilComEnd (_:rest) = readTilComEnd rest
    readTilComEnd [] = []
    
    scan :: String -> Either LexError [Token]
    scan str = scan' str []
    -- Constants, identifiers and keywords
    scan' :: String -> [Token] -> Either LexError [Token]
    scan' str@(char:rest) acc 
        | isDigit char = case readNumber str [] of 
            Right (tok,rest') -> scan' rest' (tok:acc)
            Left left -> Left left
        | isAlpha char = case readStr str [] of
            Right (tok,rest') -> scan' rest' (tok:acc)
            Left left -> Left left
        | isWS char = scan' rest acc
    scan' ('\'':'\\':c:'\'':rest) acc 
        | c == 'n' = scan' rest (TokConstant (ConstChar '\n') : acc)
        | c == 't' = scan' rest (TokConstant (ConstChar '\t') : acc)
        | c == '\\' = scan' rest (TokConstant (ConstChar '\\') : acc)
        | c == '\'' = scan' rest (TokConstant (ConstChar '\'') : acc)
        | c == '\"' = scan' rest (TokConstant (ConstChar '\"') : acc)
    scan' ('\'':c:'\'':rest) acc = scan' rest (TokConstant (ConstChar c) : acc)


    -- Comments/include
    scan' ('/':'/':rest) acc = scan' (readTilNL rest) acc
    scan' ('/':'*':rest) acc = scan' (readTilComEnd rest) acc
    scan' ('#':rest) acc = scan' (readTilNL rest) acc
    -- Operators
    scan' ('+':rest) acc = scan' rest (TokOperator Plus : acc)
    scan' ('-':rest) acc = scan' rest (TokOperator Minus : acc)
    scan' ('*':rest) acc = scan' rest (TokOperator Times : acc)
    scan' ('/':rest) acc = scan' rest (TokOperator Div : acc)
    scan' ('%':rest) acc = scan' rest (TokOperator Mod : acc)
    scan' ('<':'=':rest) acc = scan' rest (TokOperator LessOrEq : acc)
    scan' ('>':'=':rest) acc = scan' rest (TokOperator GreaterOrEq : acc)
    scan' ('<':rest) acc = scan' rest (TokOperator Less : acc)
    scan' ('>':rest) acc = scan' rest (TokOperator Greater : acc)
    scan' ('=':rest) acc = scan' rest (TokOperator Eq : acc)
    scan' ('!':'=':rest) acc = scan' rest (TokOperator NotEq : acc)
    scan' ('&':'&':rest) acc = scan' rest (TokOperator And : acc)
    scan' ('|':'|':rest) acc = scan' rest (TokOperator Or : acc)
    scan' ('&':rest) acc = scan' rest (TokOperator BWAnd : acc)
    scan' ('|':rest) acc = scan' rest (TokOperator BWOr : acc)



    -- Seperators
    scan' ('(':rest) acc = scan' rest (TokSeperator ParL : acc)
    scan' (')':rest) acc = scan' rest (TokSeperator ParR : acc)
    scan' ('{':rest) acc = scan' rest (TokSeperator CurlyBL : acc)
    scan' ('}':rest) acc = scan' rest (TokSeperator CurlyBR : acc)
    scan' ('[':rest) acc = scan' rest (TokSeperator SquareBL : acc)
    scan' (']':rest) acc = scan' rest (TokSeperator SquareBR : acc)
    scan' (';':rest) acc = scan' rest (TokSeperator SemiCol : acc)
    scan' (',':rest) acc = scan' rest (TokSeperator Comma : acc)





    scan' [] acc = Right $ reverse (TokEof:acc)
    scan' (c:_) _ = Left $ LexError $ "Unrecognized char: " ++ [c]


