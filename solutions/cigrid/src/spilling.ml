
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
  match key with 
  | Reg(n) ->
    let key = sprintf "reg_%d" n in
    let found_offset = List.assoc key env in 
    print_endline ("found " ^ key ^ "!");
    (found_offset, curr_offset, env)
  | TReg(n, _) ->
    let key = sprintf "treg_%d" n in
    let found_offset = List.assoc key env in
    print_endline ("found " ^ key ^ "!");
    (found_offset, curr_offset, env)
  | _ ->
    let () = print_endline "Shouldn't be here" in
    exit 0
with
| Not_found ->
  begin match key with
  | Reg(n) ->
    let key1 = sprintf "reg_%d" n in
    print_endline ("didn't find " ^ key ^ "!");
    let new_env = ((key, curr_offset)::env) in
    (curr_offset, curr_offset + 8, new_env)
  | TReg(n, _) ->
    let key1 = sprintf "treg_%d" n in
    print_endline ("didn't find " ^ key ^ "!");
    let new_env = ((key, curr_offset)::env) in
    (curr_offset, curr_offset + 8, new_env)
  | _ ->
    let () = print_endline "Shouldn't be here" in
    exit 0 end

(* might need more temporary registers, i.e. data structure *)
let temp_reg = "r10"

(* formatted string *)
let on_stack offset = 
  if offset = 0 then
    "qword [rsp]"
  else
    sprintf "qword [rsp + %d]" offset

(* does it matter which operand that is moved to a register? *)
(* second operand shall be moved to a tempirary register *)
let bop_mem_mem op1 op2 curr_offset env = 
  let (offset_op1, curr_offset1, env1) = 
    offsets_from_env curr_offset env op2 in
  let (offset_op2, curr_offset2, env2) = 
    offsets_from_env curr_offset1 env1 op1 in
  let mem_to_reg = sprintf "%s\t%s, %s" "mov" temp_reg (on_stack offset_op2) in
  let bop_str = sprintf "%s\t%s, %s" (p_bop bop) (on_stack offset_op1) temp_reg in
  let res_str = sprintf "%s\n%s" mem_to_reg bop_str in
  (res_str, curr_offset2, env2)

let bop_mem_imm op curr_offset env = 
  let (offset_op, curr_offset1, env1) = 
    offsets_from_env curr_offset env op in
  let bop_str = sprintf "%s\t%s, %d" (p_bop bop) (on_stack offset_op) value in
   (bop_str, curr_offset1, env1)

let spill_instr curr_offset env = function
| BinOp(bop, op, Imm(value)) ->
  bop_mem_imm op Imm(value) curr_offset env
| BinOp(bop, op1, op2) ->
  bop_mem_imm op1 op2 curr_offset env
  
  
| BinOp(bop, TReg(n1, name), Reg(n2)) ->
  let (offset_op1, curr_offset1, env1) = 
    offsets_from_env curr_offset env (TReg(n1, name)) in
  let (offset_op2, curr_offset2, env2) = 
    offsets_from_env curr_offset1 env1 (Reg(n2)) in
  let tmp_reg = sprintf "%s\t%s, %s" "mov" temp_reg (on_stack offset_op1) in
  let bop_str = sprintf "%s\t%s, %s" (p_bop bop) (on_stack offset_op2) temp_reg in
  let res_str = sprintf "%s\n%s" tmp_reg bop_str in
    (res_str, curr_offset2, env2) (* ret *)
| BinOp(bop, TReg(n1, name1), TReg(n2, name2)) ->
  let (offset_op1, curr_offset1, env1) = 
    offsets_from_env curr_offset env (TReg(n1, name1))  in
  let (offset_op2, curr_offset2, env2) = 
    offsets_from_env curr_offset1 env1 (TReg(n2, name2)) in
  let tmp_reg = sprintf "%s\t%s, %s" "mov" temp_reg (on_stack offset_op1) in
  let bop_str = sprintf "%s\t%s, %s" (p_bop bop) (on_stack offset_op2) temp_reg in
  let res_str = sprintf "%s\n%s" tmp_reg bop_str in
    (res_str, curr_offset2, env2) (* ret *)
| BinOp(bop, Reg(n), Imm(value)) ->
  let (offset_op, curr_offset1, env1) = 
    offsets_from_env curr_offset env (Reg(n)) in
  let bop_str = sprintf "%s\t%s, %d" (p_bop bop) (on_stack offset_op) value in
    (bop_str, curr_offset1, env1) (* ret *)
| BinOp(bop, TReg(n, name), Imm(value)) ->
  let (offset_op, curr_offset1, env1) = 
    offsets_from_env curr_offset env (TReg(n, name)) in
  let bop_str = sprintf "%s\t%s, %d" (p_bop bop) (on_stack offset_op) value in
    (bop_str, curr_offset1, env1) (* ret *)
| BinOp(bop, op1, op2) ->
  let () = printf "%s\t%s, %s" (p_bop bop) (p_op op1) (p_op op2) in
  let () = print_endline "Not allowed combination!" in
  exit 0

let rec spill_instr_l curr_offset env = function
| [] -> "\n"
| (instr::tl) ->
  let (str, curr_offset1, new_env) = spill_instr curr_offset env instr in
    sprintf "%s\n%s" str (spill_instr_l curr_offset1 new_env tl)

let rec spill = function
| [] -> ()
| (Block(instr_l, b_end)::tl) ->
  let str = sprintf "%s%s" (spill_instr_l 0 [] instr_l) (p_blockend b_end) in
  let () = printf "%s\n" str in (* printout! include asm header and stack add/sub *)
  spill tl