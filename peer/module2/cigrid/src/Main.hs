module Main where
    import Lexer (alexScanTokens')
    import Parser ( parse, Program ) 
    import Semantics (semanticsCheck)
    import System.Exit (exitSuccess, ExitCode (..), exitWith)
    import System.Environment (getArgs)
    import Data.List (nub, delete)
    import System.IO (stderr, hPrint)
    import System.Console.GetOpt --(ArgDescr(NoArg), OptDescr (Option), ArgOrder (Permute), getOpt)
    import Ir (toIr)
    import Asm ( instSelect, spill)
    
    if' :: Bool -> a -> a -> a
    if' True  x _ = x
    if' False _ y = y

    data Flag = PPrint | LError | NAnalysis | Asm | Help deriving (Eq,Ord,Enum,Show,Bounded)

    flags :: [OptDescr Flag]
    flags = [ Option [] ["pretty-print"] (NoArg PPrint) "Pretty-prints the AST"
            , Option [] ["line-error"] (NoArg LError) "Prints the line at which error occurs to stderr"
            , Option [] ["name-analysis"] (NoArg NAnalysis) "Runs a simple name analysis"
            , Option [] ["asm"] (NoArg Asm) "Prints the generated x86-64 assembly code"
            , Option [] ["help"] (NoArg Help) "Print this error message"]
    
    exit1 :: IO a
    exit1 = exitWith $ ExitFailure 1
    
    exit2 :: IO a
    exit2 = exitWith $ ExitFailure 2                
                   
    helpMsg :: String
    helpMsg = "Cigrid compiler.\n\tcigrid FILENAME [--pretty-print] [--line-error] [--name-analysis] [--asm]"

    parseArgs :: [String] -> IO ([Flag], String)
    parseArgs argv = case getOpt Permute flags argv of
        (_args, fs, []) | length fs /= 1 -> exit1
        (args, _fs, []) | Help `elem` args -> exit1 
        (args, fs, []) -> return (nub args, head fs)
        (_, _, _err)-> exit1 
    
    cigrid :: [Flag] -> Either (Int,Int) (Either a Program) -> IO a
    cigrid flags' (Left (l,_)) 
        | LError `elem` flags' = hPrint stderr l >> exit1
        | otherwise = exit1
    cigrid flags' (Right (Right program))
        | NAnalysis `elem` flags' = case semanticsCheck program of
            Just (l,_) -> if LError `elem` flags' then hPrint stderr l >> exit2 else exit2
            Nothing -> cigrid (delete NAnalysis flags') (Right (Right program))
        | Asm `elem` flags' = print (spill asm) >> cigrid (delete Asm flags') (Right (Right program))
        | PPrint `elem` flags' = print program >> exitSuccess
        | otherwise = exitSuccess
        where asm = instSelect $ toIr program
    cigrid _ (Right (Left _)) = exit1

    main :: IO ()
    main = do
        args <- getArgs
        (flags',filename) <- parseArgs args
        source <- readFile filename
        cigrid flags' (alexScanTokens' source >>= parse)
        
        
        

--    main :: IO ()
--    main = do
--        args <- getArgs
--        if length args == 1 || length args == 2 
--            then case args of 
--                ["--pretty-print", filename] -> parseAndPrint filename
--                [filename, "--pretty-print"] -> parseAndPrint filename
--                [filename] -> parseNoPrint filename
--                _ -> do exitWith (ExitFailure 1)
--            else exitWith (ExitFailure 1)
        
        
            

