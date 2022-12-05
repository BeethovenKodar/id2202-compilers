
open Ir_types
open Ast_types
open Asm_types

(* acc - list of selected instructions *)
(* env - variables defined in c-program and their mapping to regs *)

let make_reg name env =
  let (n, _) = List.assoc name env in (* lookup key 'name' *)
  Reg(n)

let temp_reg n =
  TReg(n, "tmp")

let rec instr_select_expr env n acc reg = function
| EInt(v) -> (BinOp(Mov, reg, Imm(v))::acc, n)
| EVar(x) -> (BinOp(Mov, reg, make_reg x env)::acc, n)
| EBinOp(BopAdd, e1, e2) ->
  let (r1, r2) = (temp_reg n, temp_reg (n+1)) in
  let n1 = n + 2 in
  let acc1 = BinOp(Mov, reg, r1)::BinOp(Add, reg, r2)::acc in
  let (acc2, n2) = instr_select_expr env n1 acc1 r2 e2 in
  instr_select_expr env n2 acc2 r1 e1
| _ ->
  let () = print_endline "hej hopp något gick fel" in
  exit 1

let rec instr_select_ir_stmts env n acc = function
| [] -> (env, n, List.rev acc)
| (IRSVarDecl(name, typ)::tl) -> 
  instr_select_ir_stmts ((name, (n, typ))::env) (n+1) acc tl
| (IRSVarAssign(name, expr)::tl) ->
  let (expr_acc, n2) = instr_select_expr env n [] (make_reg name env) expr in
  instr_select_ir_stmts env n2 (List.rev_append expr_acc acc) tl

let instr_select_blockend env n = function
| IRSReturn(Some expr) ->
  instr_select_expr env n [] (TReg(n, "rax")) expr
| IRSReturn(None) -> ([], n)

let instr_select_block = function
| IRBlock(_, stmt_l, blockend) ->
  let (env, n, asm_list) = instr_select_ir_stmts [] 0 [] stmt_l in
  let (acc, _) = instr_select_blockend env n blockend in
  Block(List.append asm_list acc, Ret)

(* not sure if there can exist multiple blocks in the same IRFunc *)
let rec convert = function
| [] -> []
| (IRFunc(_, _, _, block)::tl) ->
  ((instr_select_block block)::convert tl)