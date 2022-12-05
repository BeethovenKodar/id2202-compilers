
open Asm_types
open Pprint_asm
open Printf

(* 
  (op, offset) list, op is { TReg(n, name), Reg(n) }
  - update env if key not present
  - return { offset to be used, next empty offset, new/updated env }
*)
let offsets_from_env curr_offset env key = 
  try 
    let found_offset = List.assoc key env in 
    (found_offset, curr_offset, env)
  with
  | Not_found ->
    (* let () = printf "%s not found\n" (p_op key) in *)
    let new_env = ((key, curr_offset)::env) in
    (curr_offset, curr_offset + 8, new_env)

(* might need more temporary registers, i.e. data structure *)
let temp_reg = "r10"

(* formatted string *)
let on_stack offset = 
  if offset = 0 then "qword [rsp]"
  else sprintf "qword [rsp + %d]" offset

(* does it matter which operand that is moved to a register? *)
(* second operand shall be moved to a tempirary register *)
let bop_mem_mem bop op1 op2 curr_offset env = 
  let (offset_op1, curr_offset1, env1) = 
    offsets_from_env curr_offset env op2 in
  let (offset_op2, curr_offset2, env2) = 
    offsets_from_env curr_offset1 env1 op1 in
  let mem_to_reg = sprintf "%s\t%s, %s" "mov" temp_reg (on_stack offset_op1) in
  let bop_str = sprintf "\t%s\t%s, %s" (p_bop bop) (on_stack offset_op2) temp_reg in
  let res_str = sprintf "\t%s\n%s" mem_to_reg bop_str in
  (res_str, curr_offset2, env2)

let bop_mem_imm bop op imm_val curr_offset env = 
  let (offset_op, curr_offset1, env1) = 
    offsets_from_env curr_offset env op in
  let bop_str = sprintf "\t%s\t%s, %s" (p_bop bop) (on_stack offset_op) imm_val in
   (bop_str, curr_offset1, env1)

(* differentiate between <mem, mem> and <imm, mem> *)
let spill_instr curr_offset env = function
(* special case since rax is a register but stored in treg which is treated as mem here *)
| BinOp(Mov, TReg(_, "rax"), Imm(int_val)) -> 
  let str_val = string_of_int int_val in
  let rax_str = sprintf "\t%s\t%s, %s" ("mov") ("rax") str_val in
  (rax_str, curr_offset, env)
(* special case since rax is a register but stored in treg which is treated as mem here *)
| BinOp(Mov, TReg(_, "rax"), op) -> 
  let (offset_op, curr_offset1, env1) = 
    offsets_from_env curr_offset env op in
  let rax_str = sprintf "\t%s\t%s, %s" "mov" "rax" (on_stack offset_op) in
  (rax_str, curr_offset1, env1)
| BinOp(bop, op, Imm(int_val)) ->
  let value = string_of_int int_val in
  bop_mem_imm bop op value curr_offset env
| BinOp(bop, op1, op2) ->
  bop_mem_mem bop op1 op2 curr_offset env 

(* recursively construct one instruction at a time *)
let rec spill_instr_l curr_offset env = function
| [] -> (curr_offset, "")
| (instr::tl) ->
  let (instr_str, curr_offset1, new_env) = spill_instr curr_offset env instr in
  let (stack_space, tl_str) = spill_instr_l curr_offset1 new_env tl in
  let str = sprintf "%s\n%s" instr_str tl_str in
    (stack_space, str)

let rec spill = function
| [] -> ()
| (Block(name, instr_l, b_end)::tl) ->
  let file_head = sprintf "\t%s\n\n\t%s\n\n" ("global  main") ("section .text") in
  let (stack_space, instr_l_str) = (spill_instr_l 0 [] instr_l) in
  let extend_rsp = sprintf "\tsub\trsp, %d\n" stack_space in
  let revert_rsp = sprintf "\tadd\trsp, %d\n" stack_space in
  let block_instr_str = sprintf "%s:\n%s%s%s\t%s\n" 
    name 
    extend_rsp
    instr_l_str
    revert_rsp
    (p_blockend b_end) in
  let () = printf "%s%s" 
    file_head 
    block_instr_str in
  spill tl