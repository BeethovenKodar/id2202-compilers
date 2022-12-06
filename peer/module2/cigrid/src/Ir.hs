module Ir where
    import Parser
    data IRStmt = IRSExpr Expression 
        | IRSVarAssign String Expression
        | IRSVarDecl String Type
    data IRBlock = IRBlock String ([IRStmt], IRBlockend)
    type Param = (Type, String)
    data IRGlobal = IRFunc String (Type, [Param], [IRBlock])
    data IRBlockend = IRSReturn (Maybe Expression)
        | IRSBranch Expression String String
        | IRSJump String
    newtype IR = IR [IRGlobal] 
    instance Show IRStmt where
        show (IRSExpr expr) = "IRSExpr(" ++ show expr ++ ")"
        show (IRSVarAssign s expr) = "IRSVarAssign(" ++ s ++ ", " ++ show expr ++ ")"
        show (IRSVarDecl s t) = "IRSVarDecl(" ++ show s ++ ", " ++ show t ++ ")"
    instance Show IRBlock where
        show (IRBlock s (stmts, blend)) = "IRBlock({" ++ s ++ ",\n" ++ 
            unlines (map show stmts) ++ show blend ++ "})"
    instance Show IRGlobal where
        show (IRFunc s (t, params, blocks)) = "IRFunc(" ++ show t ++ ", " ++ s
            ++ ", {" ++ unlines (map show params) ++ "}, {\n" 
            ++ unlines (map show blocks) ++ "})})"
    instance Show IRBlockend where
        show (IRSReturn (Just e)) = "IRSReturn(" ++ show e ++ ")"
        show (IRSReturn Nothing) = "IRSReturn()"
        show (IRSBranch e s1 s2) = "IRSBranch(" ++ show e ++ ", " ++ s1 
            ++ ", " ++ s2 ++ ")"
        show (IRSJump s) = "IRSJump(" ++ s ++ ")"
    instance Show IR where
        show (IR irglobs) = textList irglobs

    toIr :: Program -> IR
    toIr (Program globs) = IR (map globToIr globs)

    globToIr :: Global -> IRGlobal
    globToIr (GFuncDef ty s params stmt) = case stmtToBlock stmt of
        (irstmts, SReturn _ mexpr : _) -> IRFunc s (ty, params, [IRBlock [] (irstmts, IRSReturn mexpr)])
        (irstmts, []) -> IRFunc s (ty, params, [IRBlock [] (irstmts, IRSReturn Nothing)])
        (_, _) -> error "no blockend"
    globToIr _ = error "TODO"

    stmtToBlock :: Statement -> ([IRStmt], [Statement])
    stmtToBlock (SScope stmts) = scopeToBlock stmts []
    stmtToBlock stmt = scopeToBlock [stmt] []

    scopeToBlock :: [Statement] -> [IRStmt] -> ([IRStmt], [Statement])
    scopeToBlock (SExpr _ expr : stmts) acc = scopeToBlock stmts (IRSExpr expr:acc)  
    scopeToBlock (SVarAssign _ ident expr : stmts) acc 
        = scopeToBlock stmts (IRSVarAssign ident expr : acc)
    scopeToBlock (SVarDef _ ty ident expr : stmts) acc
        = scopeToBlock stmts (IRSVarAssign ident expr : IRSVarDecl ident ty : acc)
    scopeToBlock alls@(SReturn _ _ : _) acc 
        =  (reverse acc, alls)
    scopeToBlock [] acc = (reverse acc, [])
    scopeToBlock _ _ = error "TODO" 
    


