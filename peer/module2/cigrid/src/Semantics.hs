module Semantics where

    import Parser
    import Data.Bifunctor (Bifunctor(first))
    
    
    isDefined :: String -> [(Type, String)] -> Bool
    isDefined _ [] = False
    isDefined s1 ((_,s2):defined) 
        | s1 == s2 = True
        | otherwise = isDefined s1 defined

    isDefinedStructField :: String -> String -> [(Type, String)] -> Bool
    isDefinedStructField _ _ [] = False
    isDefinedStructField sname fname ((TStructMember sname' _, fname') : _) 
        | sname == sname' && fname == fname' = True
    isDefinedStructField sname fname defined = isDefinedStructField sname fname defined 
    

    semanticsCheck :: Program -> Maybe (Int,Int)
    semanticsCheck (Program globals) = semGlobs globals []
    
    semGlobs :: [Global] -> [(Type, String)] -> Maybe (Int,Int)
    semGlobs [] _defined = Nothing
    semGlobs (GFuncDef _ _ params body : globs) defined = case semStmt body (params++defined) of 
            Nothing -> semGlobs globs defined
            just -> just
    semGlobs (GFuncDecl t ident _ : globs) defined = semGlobs globs ((t,ident) : defined)
    semGlobs (GVarDef info t ident expr : globs) defined = if semExpr expr defined then semGlobs globs ((t,ident) : defined) else Just info
    semGlobs (GVarDecl t ident : globs) defined = semGlobs globs ((t,ident) : defined)
    semGlobs (GStruct ident attribs : globs) defined = semGlobs globs (map (first (TStructMember ident)) attribs ++ defined)
    
    -- Treat single statements as a singleton scope
    semStmt :: Statement -> [(Type, String)] -> Maybe (Int,Int)
    semStmt (SScope stmts) defined = semScope stmts defined
    semStmt stmt defined = semScope [stmt] defined

    -- Check each statement in scope, add to "defined" list if there is a new definition
    semScope :: [Statement] -> [(Type, String)] -> Maybe (Int,Int)
    semScope (SVarDef info t ident expr : stmts) defined 
        = if semExpr expr defined && notElem (t,ident) defined then semScope stmts ((t,ident):defined) else Just info  
    
    semScope (SVarAssign info ident expr : stmts) defined 
        = if isDefined ident defined && semExpr expr defined then semScope stmts defined else Just info
    
    semScope (SArrayAssign info ident e1 Nothing e2 : stmts) defined 
        = if isDefined ident defined && semExpr e1 defined && semExpr e2 defined then semScope stmts defined else Just info
    
    semScope (SArrayAssign info ident e1 (Just s) e2 : stmts) defined
        = if isDefined ident defined && semExpr e1 defined && semExpr e2 defined && isDefinedStructField ident s defined
            then semScope stmts defined else Just info
    
    semScope (SIf info expr ifstmt Nothing : stmts) defined 
        = if semExpr expr defined then case semStmt ifstmt defined of 
                Nothing -> semScope stmts defined
                just -> just
            else Just info 
    semScope (SIf info expr ifstmt (Just elsestmt) : stmts) defined 
        = if semExpr expr defined then case semStmt ifstmt defined of 
                Nothing -> case semStmt elsestmt defined of 
                    Nothing -> semScope stmts defined
                    just -> just
                just -> just
            else Just info
    semScope (SWhile info expr stmt : stmts) defined 
        = if semExpr expr defined then case semStmt stmt defined of 
                Nothing -> semScope stmts defined
                just -> just
            else Just info
    semScope (SReturn info (Just expr) : stmts) defined 
        = if semExpr expr defined then semScope stmts defined else Just info
    semScope (SDelete info ident : stmts) defined = if isDefined ident defined then semScope stmts defined else Just info
    semScope (SScope scopestmts : stmts) defined = case semScope scopestmts defined of
            Nothing -> semScope stmts defined
            just -> just
    
    semScope _ _ = Nothing


    semExpr :: Expression -> [(Type,String)] -> Bool
    semExpr (EVar ident) defined = isDefined ident defined
    semExpr (EBinOp _ e1 e2) defined = semExpr e1 defined && semExpr e2 defined
    semExpr (EUnOp _ expr) defined = semExpr expr defined
    semExpr (ECall _ exprs) defined = all (`semExpr` defined) exprs
    semExpr (EArrayAccess ident _ _ ) defined = isDefined ident defined
    semExpr _ _ = True
