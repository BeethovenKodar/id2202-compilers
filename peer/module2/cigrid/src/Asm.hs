module Asm where
    import Parser
    import Ir
    import Data.List (mapAccumL)
    data UnOp = Inc 
        | Dec 
        | Push
        | Pop
        | IMul
        | IDiv
        | Not
        | Neg
        | Setg
        | Setl
        | Setge
        | Setle
        | Sete
        | Setne
    instance Show UnOp where
        show unop = case unop of
          Inc -> "inc"
          Dec -> "dec"
          Push -> "push"
          Pop -> "pop"
          IMul -> "imul"
          IDiv -> "idiv"
          Not -> "not"
          Neg -> "neg"
          Setg -> "setg"
          Setl -> "setl"
          Setge -> "setge"
          Setle -> "setle"
          Sete -> "sete"
          Setne -> "setne"
    data BinOp = Add
        | Sub
        | Cmp
        | Mov 
        | And
        | Or
        | Xor
    instance Show BinOp where
        show binop = case binop of
          Add -> "add"
          Sub -> "sub"
          Cmp -> "cmp"
          Mov -> "mov"
          And -> "and"
          Or -> "or"
          Xor -> "xor"
    data Op = Imm Int
        | Reg Register
        | TReg Register Sym
        | Mem Bitsize Register (Maybe Register) Scale Displacement
        | NoOp deriving Eq
    instance Show Op where
        show op = case op of
          Imm n -> show n
          Reg reg -> show reg
          TReg (Register n _size) s -> s ++ '_': show n 
          Mem bit reg1 Nothing _ 0 -> show bit ++ ' ':'[' : show reg1 ++ "]" 
          Mem bit reg1 Nothing _ d -> show bit ++ ' ':'[' : show reg1 ++ " + " ++ show d ++ "]"
          Mem bit reg1 (Just reg2) 0 0 -> show bit ++ ' ':'[' : show reg1 ++ " + " ++ show reg2 ++ "]" 
          Mem bit reg1 (Just reg2) s 0 -> show bit ++ ' ':'[' : show reg1 ++ " + " ++ show reg2 ++ " * " ++ show s ++ "]"
          Mem bit reg1 (Just reg2) 0 d -> show bit ++ ' ':'[' : show reg1 ++ " + " ++ show reg2 ++ " + " ++ show d ++ "]"
          Mem bit reg1 (Just reg2) s d -> show bit ++ ' ':'[' : show reg1 ++ " + " ++ show reg2 ++ " * " ++ show s ++ " + " ++ show d ++ "]"  
          NoOp -> "noop"
    data JBinOp = Jl
        | Jg
        | Jle
        | Jge
        | Je
        | Jne
    instance Show JBinOp where
        show jbinop = case jbinop of
          Jl -> "jl"
          Jg -> "jg"
          Jle -> "jle"
          Jge -> "jge"
          Je -> "je"
          Jne -> "jne"
    data Blockend = Ret
        | Jmp Sym
        | BinJ JBinOp Sym Sym
    instance Show Blockend where
        show blockend = case blockend of
          Ret -> "\tret"
          Jmp s -> "\tjmp " ++ s
          BinJ jbo s str -> "\t" ++ show jbo ++ "\t" ++ s ++ ", " ++ str
    data Block = Block Int Sym ([Inst], Blockend)
    instance Show Block where
        show (Block _ [] (insts, be)) = unlines (map show insts) ++ show be
        show (Block _ s (insts, be)) = s ++ ":\n" ++ unlines (map show insts) ++ show be
    data Func = Func Sym [Block]
    instance Show Func where
        show (Func s blocks) = s ++ ":\n" ++ unlines (map show blocks)
    data Bitsize = Byte
        | Word
        | DWord
        | QWord deriving Eq
    instance Show Bitsize where
        show bitsize = case bitsize of
          Byte -> "byte"
          Word -> "word"
          DWord -> "dword"
          QWord -> "qword"
    type Displacement = Int
    type Scale = Int
    data Register = Register Int Bitsize deriving Eq
    instance Show Register where
        show reg = case reg of
            Register 0 QWord -> "rax"
            Register 0 DWord -> "eax"
            Register 0 Word -> "ax"
            Register 0 Byte -> "al"
            Register 1 QWord -> "rcx"
            Register 1 DWord -> "ecx"
            Register 1 Word -> "cx"
            Register 1 Byte -> "cl"
            Register 2 QWord -> "rdx"
            Register 2 DWord -> "edx"
            Register 2 Word -> "dx"
            Register 2 Byte -> "dl"
            Register 3 QWord -> "rbx"
            Register 3 DWord -> "ebx"
            Register 3 Word -> "bx"
            Register 3 Byte -> "bl"
            Register 4 QWord -> "rsp"
            Register 4 DWord -> "esp"
            Register 4 Word -> "sp"
            Register 4 Byte -> "sl"
            Register 5 QWord -> "rbp"
            Register 5 DWord -> "ebp"
            Register 5 Word -> "bp"
            Register 5 Byte -> "bl"
            Register 6 QWord -> "rsi"
            Register 6 DWord -> "esi"
            Register 6 Word -> "si"
            Register 6 Byte -> "sl"
            Register 7 QWord -> "rdi"
            Register 7 DWord -> "edi"
            Register 7 Word -> "di"
            Register 7 Byte -> "dl"
            Register 8 QWord -> "r8"
            Register 8 DWord -> "r8d"
            Register 8 Word -> "r8w"
            Register 8 Byte -> "r8b"
            Register 9 QWord -> "r9"
            Register 9 DWord -> "r9d"
            Register 9 Word -> "r9w"
            Register 9 Byte -> "r9b"
            Register 10 QWord -> "r10"
            Register 10 DWord -> "r10d"
            Register 10 Word -> "r10w"
            Register 10 Byte -> "r10b"
            Register 11 QWord -> "r11"
            Register 11 DWord -> "r11d"
            Register 11 Word -> "r11w"
            Register 11 Byte -> "r11b"
            Register 12 QWord -> "r12"
            Register 12 DWord -> "r12d"
            Register 12 Word -> "r12w"
            Register 12 Byte -> "r12b"
            Register 13 QWord -> "r13"
            Register 13 DWord -> "r13d"
            Register 13 Word -> "r13w"
            Register 13 Byte -> "r13b"
            Register 14 QWord -> "r14"
            Register 14 DWord -> "r14d"
            Register 14 Word -> "r14w"
            Register 14 Byte -> "r14b"
            Register 15 QWord -> "r15"
            Register 15 DWord -> "r15d"
            Register 15 Word -> "r15w"
            Register 15 Byte -> "r15b"
            _ -> error "no such register"
    type Sym = String
    data Inst = IUnOp UnOp Op
        | IBinOp BinOp Op Op
        | Call Sym
        | Cqo 
    instance Show Inst where
        show inst = case inst of          
          IUnOp uo op -> "\t" ++ show uo ++ "\t" ++ show op
          IBinOp bo op op' -> "\t" ++ show bo ++ "\t" ++ show op ++ ", " ++ show op'
          Call s -> "\t" ++ "call\t" ++ show s
          Cqo -> "cqo"
    newtype ASM = ASM [Func]
    instance Show ASM where
        show (ASM funcs) = "\tglobal main\n" ++ unlines (map show funcs)




    bitsizeOfType :: Type -> Bitsize
    bitsizeOfType ty = case ty of
      TVoid -> QWord
      TInt -> QWord
      TChar -> Byte
      TIdent _ -> QWord
      TPoint _ -> QWord
      TStructMember _ _ -> QWord

    sizeof :: Bitsize -> Int
    sizeof QWord = 8
    sizeof DWord = 4
    sizeof Word = 2
    sizeof Byte = 1

    makeReg :: Sym -> [(Sym, (Int, Type))] -> Op
    makeReg l env = case mVal of 
            Just (n, ty) -> TReg (Register n (bitsizeOfType ty)) l
            Nothing -> error "no lookup entry"
        where mVal = lookup l env
    
    paramsToEnv :: Num a1 =>
        [(b, a2)] -> a1 -> [(a2, (a1, b))] -> ([(a2, (a1, b))], a1)
    paramsToEnv [] n acc = (reverse acc, n)
    paramsToEnv ((ty, ident) : params) n acc = paramsToEnv params (n+1) ((ident, (n, ty)) : acc)

  
    instSelect :: IR -> ASM
    instSelect (IR irglobs) = ASM asm
        where (_,_,asm) = instSelectIRGlobals [] 0 [] irglobs

    instSelectIRGlobals :: [(String, (Int, Type))] -> Int -> [Func] -> [IRGlobal] -> ([(String, (Int, Type))], Int, [Func])
    instSelectIRGlobals env n acc [] = (env, n, reverse acc)
    instSelectIRGlobals env n acc (IRFunc s (_ty, params, irblocks) : globs)  -- _ty return type
        = instSelectIRGlobals env n'' (Func s blocks : acc) globs
        where
            (env', n') = paramsToEnv params n []
            (n'', blocks) = mapAccumL (instSelectIRBlock env') n' irblocks 
        
    instSelectIRBlock :: [(String, (Int, Type))] -> Int -> IRBlock -> (Int, Block)
    instSelectIRBlock env n (IRBlock sym (irstmts, blockend)) 
        = (blockendN, Block (blockendN - n) sym (blockAsm ++ blockendExpr, blockendAsm))
        where 
            (blockEnv, blockN, blockAsm) = instSelectIRStmts env n [] irstmts
            (blockendExpr, blockendAsm, blockendN) = instSelectIRBlockend blockEnv blockN blockend

    instSelectIRBlockend :: [(Sym, (Int, Type))]
        -> Int -> IRBlockend -> ([Inst], Blockend, Int)
    instSelectIRBlockend _env n (IRSReturn Nothing) 
        = ([], Ret, n)
    instSelectIRBlockend env n (IRSReturn (Just expr))
        = (exprAcc, Ret, n2)
        where (exprAcc, n2) = instSelectExpr env n [] (Reg $ Register 0 QWord) expr 
    instSelectIRBlockend _ _ _ = error "TODO"
    
    instSelectIRStmts :: [(String, (Int, Type))]
        -> Int
        -> [Inst]
        -> [IRStmt]
        -> ([(String, (Int, Type))], Int, [Inst])
    instSelectIRStmts env n acc [] = (env, n, reverse acc)
    instSelectIRStmts env n acc (IRSVarDecl x ty : stmts)
        = instSelectIRStmts ((x, (n, ty)) : env) (n+1) acc stmts
    instSelectIRStmts env n acc (IRSVarAssign x expr : stmts)
        = instSelectIRStmts env n2 (reverse exprAcc ++ acc) stmts
        where (exprAcc, n2) = instSelectExpr env n [] (makeReg x env) expr
    instSelectIRStmts _ _ _ _ = error "TODO Stmt"

    
    tmpReg :: Int -> Op
    tmpReg n = TReg (Register n QWord) "tmp"
    
    instSelectExpr :: [(Sym, (Int, Type))]
        -> Int -> [Inst] -> Op -> Expression -> ([Inst], Int)
    instSelectExpr env n acc reg (EVar x)
        = (IBinOp Mov reg (makeReg x env) : acc, n) 
    instSelectExpr _env n acc reg (EInt v) 
        = (IBinOp Mov reg (Imm v) : acc, n) 
    instSelectExpr env n acc reg (EBinOp BPlus (EVar x) (EInt v))
        | reg == makeReg x env = (IBinOp Add reg (Imm v) : acc, n)
    instSelectExpr env n acc reg (EBinOp BPlus (EInt v) (EVar x))
        | reg == makeReg x env = (IBinOp Add reg (Imm v) : acc, n)
    instSelectExpr env n acc reg (EBinOp BPlus (EVar x) (EVar y))
        | reg == makeReg x env = (IBinOp Add reg (makeReg y env) : acc, n)
    instSelectExpr env n acc reg (EBinOp BPlus (EVar y) (EVar x))
        | reg == makeReg x env = (IBinOp Add reg (makeReg y env) : acc, n)
    instSelectExpr env n acc reg (EBinOp BPlus e1 e2) = 
        let (r1, r2) = (tmpReg n, tmpReg (n+1)) in
            let n1 = n + 2 in
                let acc1 = IBinOp Mov reg r1 : IBinOp Add reg r2 : acc in
                    let (acc2, n2) = instSelectExpr env n1 acc1 r2 e2 in
                        instSelectExpr env n2 acc2 r1 e1
    instSelectExpr _env _n _acc _reg _ = error "TODO Expr" 



    spill :: ASM -> ASM
    spill (ASM funcs) = ASM $ map spillfunc funcs

    spillfunc :: Func -> Func
    spillfunc (Func sym blocks) = Func sym $ map spillblock blocks

    spillblock :: Block -> Block
    spillblock (Block n sym (insts, blockend)) 
        = Block n sym ( IBinOp Sub (Reg $ Register 4 QWord) (Imm $ n*8) : concatMap spillinst insts ++ [IBinOp Add (Reg $ Register 4 QWord) (Imm $ n*8)] , spillblockend blockend)

    spillinst :: Inst -> [Inst]
    spillinst (IUnOp unOp treg) = [IUnOp unOp $ memspill treg]
    spillinst (IBinOp binOp treg (Imm i)) = [IBinOp binOp (memspill treg) (Imm i)]
    spillinst (IBinOp binOp treg (TReg (Register n bs) sym)) = IBinOp Mov (tmpreal bs) (memspill (TReg (Register n bs) sym)) :
        [IBinOp binOp (memspill treg) (tmpreal bs)]
    spillinst _ = error "TODO"

    spillblockend :: Blockend -> Blockend
    spillblockend be = be

    memspill :: Op -> Op
    memspill (TReg (Register n bsize) _) = Mem bsize (Register 4 QWord) Nothing 1 (n* sizeof bsize)
    memspill reg = reg

    tmpreal :: Bitsize -> Op
    tmpreal bs = Reg $ Register 10 bs  
