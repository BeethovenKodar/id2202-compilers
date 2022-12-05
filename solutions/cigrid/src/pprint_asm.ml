
open Asm_types
open Printf

let p_bop = function 
| Add -> "add"
| Sub -> "sub"
| Mov -> "mov"

let p_op = function
| Reg(reg) -> sprintf "x_%d" reg
| TReg(_, "rax") -> "rax"
| TReg(reg, name) -> sprintf "%s_%d" name reg
| Imm(num) -> sprintf "%s" (string_of_int num)

let p_instr = function
| BinOp(bop, op1, op2) ->
  sprintf "%s\t%s,\t%s" (p_bop bop) (p_op op1) (p_op op2)

let p_blockend = function (* how to fix this, should not be above *)
| Ret -> "ret"

let rec p_instr_l = function
| [] -> ""
| (instr::tl) ->
  sprintf "\n%s%s" (p_instr instr) (p_instr_l tl)

let rec p_block = function
| [] -> ()
| (Block(_, instr_l, b_end)::tl) ->
  let str = sprintf "%s\n%s" (p_instr_l instr_l) (p_blockend b_end) in
  let () = printf "%s\n" str in
  p_block tl