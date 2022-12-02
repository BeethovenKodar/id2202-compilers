
type reg = int

type bop = 
| Add
| Sub
| Mov

type op = 
| Imm of int
| Reg of reg
| TReg of reg * string

type inst =
| BinOp of bop * op * op
| Ret

type blockend =
| Ret

type block = 
| Block of inst list * blockend