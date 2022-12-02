
open Asm_types
open Printf

let p_bop = function 
| Add -> "add"
| Sub -> "sub"
| Mov -> "mov"

let p_op = function
| Reg(reg) -> 
  sprintf "x_%d" reg
| TReg(reg, name) ->
  sprintf "%s_%d" name reg
| Imm(num) -> 
  sprintf "%s" (string_of_int num)

let p_inst = function
| BinOp(bop, op1, op2) ->
  sprintf "%s %s %s" (p_bop bop) (p_op op1) (p_op op2)
| Ret -> "ret"

let p_blockend = function (* how to fix this, should not be above *)
| Ret -> "ret"

let rec p_instr_l = function
| [] -> ""
| (inst::tl) ->
  sprintf "%s %s\n" (p_inst inst) (p_instr_l tl)

let p_block = function
| Block(inst_l, b_end) ->
  sprintf "%s\n%s" (p_instr_l inst_l) (p_blockend b_end)
