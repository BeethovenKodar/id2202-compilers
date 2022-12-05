
type reg = int

type bop = 
| Add
| Sub
| Mov

type op = 
| Imm of int
| Reg of reg
| TReg of reg * string

type instr =
| BinOp of bop * op * op

type blockend =
| Ret

type block = 
| Block of string * instr list * blockend