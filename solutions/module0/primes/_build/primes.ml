open Printf

(* fold the list of integers and append a comma in between each two *)
(* first is "hardcoded" *)
let pretty list = 
  match list with
  | hd::tl ->
      let acc = string_of_int hd in
        let str = List.fold_left (fun a x -> a ^ "," ^ (string_of_int x)) acc tl in
        printf "%s\n" str
  | [] -> print_endline "Shouldn't be here"

(* recurse over all predecending integers before num *)
let rec isPrime testedNum divWith = 
  match divWith with
  | 1 -> true
  | _ -> 
    if testedNum mod divWith = 0 then
      false
    else 
      isPrime testedNum (divWith-1)

(* keep count of the current inspected number, save primes in reverse order *)
let rec iterator acc curr n = 
  match n with
  | 0 -> acc
  | _ -> 
    if isPrime curr (curr-1) then
      iterator (curr::acc) (curr+1) (n-1) (* save prime in acc, look for next *)
    else
      iterator acc (curr+1) n (* was not prime, only look for next *)

(* entry function for returning the n first primes, reverse accumulator *)
let prime = 
  try
    if Array.length Sys.argv <> 2 then ( (* program + one argument = 2 *)
      print_endline "Must provide exactly 1 argument";
      exit 2);

    let numPrimes = int_of_string (Array.get (Sys.argv) 1) in
    if numPrimes <= 0 || numPrimes > 100 then ( (* out of range *)
      printf "Provided integer %d, but must be between 1-100\n" numPrimes;
      exit 1);
    
    (* let list = List.iter (printf "%d") (List.rev (iterator [] 2 numPrimes)) in *)
    let list = List.rev (iterator [] 2 numPrimes) in
    pretty(list)
  with 
  | Failure(_) -> (* thrown int_of_string *)
      print_endline "Must provide an integer";
      exit 2;
