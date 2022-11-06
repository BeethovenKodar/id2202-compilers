open Printf

(* binary tree representation *)
type tree =
 | Node of string * tree * tree
 | Leaf of int

(* general error function to print detected errors *)
let exitError msg =
  print_endline ("\nERROR: " ^ msg);
  exit 1

(* traverse left and print the node first, then left, 
   then right recursively *)
let rec printPreOrder = function
  | Node(str, l, r) ->
    print_endline ("Node:" ^ str);
    printPreOrder l;
    printPreOrder r
  | Leaf(value) ->
    print_endline ("Leaf:" ^ string_of_int value)

(* traverse left and print left first, then the node, 
   then right recursively *)
let rec printInOrder = function
  | Node(str, l, r) ->
    printInOrder l;
    print_endline ("Node:" ^ str);
    printInOrder r
  | Leaf(value) ->
    print_endline ("Leaf:" ^ string_of_int value)

(* traverse left and print left first, then right, then the 
   node recursively *)
let rec printPostOrder = function
  | Node(str, l, r) ->
    printPostOrder l;
    printPostOrder r;
    print_endline ("Node:" ^ str)
  | Leaf(value) ->
    print_endline ("Leaf:" ^ string_of_int value)

(* fold the list of integers and append a comma in between each two *)
(* first is "hardcoded" *)
let pretty list = 
  match list with
  | (hd::tl) ->
      let acc = string_of_int hd in
        let str = List.fold_left (fun a x -> a ^ "," ^ (string_of_int x)) acc tl in
        printf "%s\n" str
  | [] -> print_endline "Shouldn't be here"

(* recursively traverse the tree left to right and append leaf 
   values to the end of the list *)
let rec list tree acc = 
  match tree with 
  | Node(_, l, r) ->
    let acc = list l acc in
    list r acc
  | Leaf(value) -> 
    List.append acc [value]

(* add left size and right size with 1, that is the current node *)
let rec size = function
  | Node(_, l, r) ->
    size l + size r + 1
  | Leaf(_) -> 
    1

(* take the max value of right and left branch then add 1 to 
   count the current node/leaf too *)
let rec depth = function
  | Node(_, l, r) ->
    1 + (Stdlib.max (depth l) (depth r))
  | Leaf(_) ->
    1

(* parse which operation that is requested *)
let handleOperation operation tree =
  match operation with
  | "pre-order" -> printPreOrder tree
  | "post-order" -> printPostOrder tree
  | "in-order" -> printInOrder tree
  | "list" -> pretty (list tree [])
  | "size" -> printf "%d\n" (size tree)
  | "depth" -> printf "%d\n" (depth tree)
  | _ -> exitError "Invalid operation type!"

(* recurse to find potential white spaces for node values
   error if returned value is the empty string *)
let rec parseValue args elemValue = 
  match args with
  | [] ->
    ([], elemValue)
  | (hd::tl) ->
    (match String.split_on_char ':' hd with
    | ("Node"::_) | ("Leaf"::_) ->
      (args, elemValue)
    | _ -> (* not a keyword, i.e. node/leaf *)
      parseValue tl (elemValue ^ " " ^ hd))

(* find nodes and leaves, delegate finding blank node values 
   to function above *)
let rec parseElems args =
    match args with
    | [] ->
      exitError "Nodes must have two proceeding children"
    | [one] ->
      (match (String.split_on_char ':' one) with
      | ("Leaf"::[value]) ->
        ([], Leaf(int_of_string value))
      | _ ->
        exitError "Leaf must be last in sequence")
    | (hd::tl) ->
      (match (String.split_on_char ':' hd) with 
      | ("Leaf"::[value]) ->
          (tl, Leaf(int_of_string value))
      | ("Node"::[value]) -> 
        (* retrieve value for current node *)
        let (remArgs, value) = parseValue tl value in 
        (* find right branch, must exist since it's a node *)
        let (remArgs, leftBranch) = parseElems remArgs in 
        (* find left branch, must exist since it's a node *)
        let (remArgs, rightBranch) = parseElems remArgs in 
        (remArgs, Node(value, leftBranch, rightBranch))
      | _ ->
        exitError "Leaf or Node cannot have more than one ':' in the construct, or two leaf values")

let rec print_list = function
  | [] -> ()
  | (hd::tl) ->
    printf "%s\n" hd;
    print_list tl 

(* append new line to end of acc until EOF *)
let rec readStdIn seq =
  try
    let str = input_line stdin in
    let splitOnWhiteSpace = String.split_on_char ' ' str in
    readStdIn (List.append seq splitOnWhiteSpace)
  with
  | End_of_file -> seq

(* simple validation function to see if given operation as 
   program argument is valid *)
let validateOperation = function
  | "pre-order" | "in-order" | "post-order" | "list" | "size" | "depth" ->
    ()
  | _ ->
    exitError "Invoke with ./binary-tree operation"

(* entry point of the binary tree parser *)
let binarytree =
  match (Sys.argv) with
  | [| _ |] ->
    exitError "No program arguments"
  | [|"./binary-tree"; op |] ->
    validateOperation op;
    let treeSeq = readStdIn [] in
    if List.length treeSeq = 0 then
      exitError "Must provide tree via stdin";

    let (treeSeq, bTree) = parseElems treeSeq in
    if List.length treeSeq > 0 then
      exitError "Nodes cannot proceed leaves";
    let op = (Array.get (Sys.argv) 1) in
    handleOperation op bTree;
    exit 0
  | _ ->
    exitError "Invalid program argument"