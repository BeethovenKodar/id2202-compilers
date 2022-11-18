
type token = 
  | WHILE
  | TVOID
  | TINT
  | TILDE
  | TCHAR
  | SUB1
  | SUB
  | SEMICOLON
  | RPAREN
  | RETURN
  | RCURLY
  | OR
  | NOT
  | NEQ
  | MUL
  | MOD
  | LTE
  | LT
  | LPAREN
  | LCURLY
  | IF
  | IDENT of (
# 31 "parser.mly"
       (string)
# 28 "parser.ml"
)
  | GTE
  | GT
  | EQ
  | EOF
  | ELSE
  | DIV
  | DECINT of (
# 55 "parser.mly"
       (int)
# 39 "parser.ml"
)
  | COMMA
  | CHAR of (
# 56 "parser.mly"
       (char)
# 45 "parser.ml"
)
  | BREAK
  | BITOR
  | BITAND
  | ASSIGN
  | AND
  | ADD1
  | ADD

# 2 "parser.mly"
  


  (* function for handling a lexing issue that has occured, always exits *)
  let parse_error exit_code msg =
    let () = Printf.printf ("%s at --> exit %d\n") msg exit_code in
      exit exit_code

# 64 "parser.ml"

let menhir_begin_marker =
  0

and (xv_varassign, xv_unop, xv_typ, xv_stmt, xv_separated_nonempty_list_COMMA_pair_typ_IDENT__, xv_separated_nonempty_list_COMMA_expr_, xv_separated_list_COMMA_pair_typ_IDENT__, xv_separated_list_COMMA_expr_, xv_program, xv_params, xv_pair_typ_IDENT_, xv_option_stmt_, xv_option_expr_, xv_option_ELSE_, xv_lvalue, xv_loption_separated_nonempty_list_COMMA_pair_typ_IDENT___, xv_loption_separated_nonempty_list_COMMA_expr__, xv_list_stmt_, xv_global, xv_expr, xv_binop, xv_assign) =
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
                    xs
# 73 "parser.ml"
   : 'tv_separated_nonempty_list_COMMA_pair_typ_IDENT__) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
        _2
# 77 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
  x
# 81 "parser.ml"
   : 'tv_pair_typ_IDENT_) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 86 "parser.ml"
     : 'tv_separated_nonempty_list_COMMA_pair_typ_IDENT__) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 237 "<standard.mly>"
  x
# 91 "parser.ml"
   : 'tv_pair_typ_IDENT_) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 96 "parser.ml"
     : 'tv_separated_nonempty_list_COMMA_pair_typ_IDENT__) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
                    xs
# 101 "parser.ml"
   : 'tv_separated_nonempty_list_COMMA_expr_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
        _2
# 105 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
  x
# 109 "parser.ml"
   : 'tv_expr) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 114 "parser.ml"
     : 'tv_separated_nonempty_list_COMMA_expr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 237 "<standard.mly>"
  x
# 119 "parser.ml"
   : 'tv_expr) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 124 "parser.ml"
     : 'tv_separated_nonempty_list_COMMA_expr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 228 "<standard.mly>"
  xs
# 129 "parser.ml"
   : 'tv_loption_separated_nonempty_list_COMMA_pair_typ_IDENT___) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) ->
    (
# 229 "<standard.mly>"
    ( xs )
# 134 "parser.ml"
     : 'tv_separated_list_COMMA_pair_typ_IDENT__) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 228 "<standard.mly>"
  xs
# 139 "parser.ml"
   : 'tv_loption_separated_nonempty_list_COMMA_expr__) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) ->
    (
# 229 "<standard.mly>"
    ( xs )
# 144 "parser.ml"
     : 'tv_separated_list_COMMA_expr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 163 "<standard.mly>"
         y
# 149 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 153 "parser.ml"
  )) (_startpos_y_ : Lexing.position) (_endpos_y_ : Lexing.position) (_startofs_y_ : int) (_endofs_y_ : int) (_loc_y_ : Lexing.position * Lexing.position) (
# 163 "<standard.mly>"
  x
# 157 "parser.ml"
   : 'tv_typ) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 164 "<standard.mly>"
    ( (x, y) )
# 162 "parser.ml"
     : 'tv_pair_typ_IDENT_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 112 "<standard.mly>"
  x
# 167 "parser.ml"
   : 'tv_stmt) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 172 "parser.ml"
     : 'tv_option_stmt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 111 "<standard.mly>"
    ( None )
# 178 "parser.ml"
     : 'tv_option_stmt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 112 "<standard.mly>"
  x
# 183 "parser.ml"
   : 'tv_expr) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 188 "parser.ml"
     : 'tv_option_expr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 111 "<standard.mly>"
    ( None )
# 194 "parser.ml"
     : 'tv_option_expr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 112 "<standard.mly>"
  x
# 199 "parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 204 "parser.ml"
     : 'tv_option_ELSE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 111 "<standard.mly>"
    ( None )
# 210 "parser.ml"
     : 'tv_option_ELSE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 140 "<standard.mly>"
  x
# 215 "parser.ml"
   : 'tv_separated_nonempty_list_COMMA_pair_typ_IDENT__) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 141 "<standard.mly>"
    ( x )
# 220 "parser.ml"
     : 'tv_loption_separated_nonempty_list_COMMA_pair_typ_IDENT___) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 139 "<standard.mly>"
    ( [] )
# 226 "parser.ml"
     : 'tv_loption_separated_nonempty_list_COMMA_pair_typ_IDENT___) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 140 "<standard.mly>"
  x
# 231 "parser.ml"
   : 'tv_separated_nonempty_list_COMMA_expr_) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 141 "<standard.mly>"
    ( x )
# 236 "parser.ml"
     : 'tv_loption_separated_nonempty_list_COMMA_expr__) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 139 "<standard.mly>"
    ( [] )
# 242 "parser.ml"
     : 'tv_loption_separated_nonempty_list_COMMA_expr__) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 247 "parser.ml"
   : 'tv_list_stmt_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 251 "parser.ml"
   : 'tv_stmt) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 256 "parser.ml"
     : 'tv_list_stmt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 262 "parser.ml"
     : 'tv_list_stmt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 162 "parser.mly"
    a
# 267 "parser.ml"
   : 'tv_assign) (_startpos_a_ : Lexing.position) (_endpos_a_ : Lexing.position) (_startofs_a_ : int) (_endofs_a_ : int) (_loc_a_ : Lexing.position * Lexing.position) ->
    (
# 162 "parser.mly"
               ( a )
# 272 "parser.ml"
     : 'tv_varassign) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 161 "parser.mly"
                             e
# 277 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 161 "parser.mly"
                       _3
# 281 "parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 161 "parser.mly"
             i
# 285 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 289 "parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) (
# 161 "parser.mly"
    t
# 293 "parser.ml"
   : 'tv_typ) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) ->
    (
# 161 "parser.mly"
                                      ( SVarAssign(i, e) )
# 298 "parser.ml"
     : 'tv_varassign) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 76 "parser.mly"
   _1
# 303 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 76 "parser.mly"
         ( UnopMinus )
# 308 "parser.ml"
     : 'tv_unop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 75 "parser.mly"
   _1
# 313 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 75 "parser.mly"
         ( UnopTilde )
# 318 "parser.ml"
     : 'tv_unop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 74 "parser.mly"
   _1
# 323 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 74 "parser.mly"
         ( UnopNot )
# 328 "parser.ml"
     : 'tv_unop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 99 "parser.mly"
    str
# 333 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 337 "parser.ml"
  )) (_startpos_str_ : Lexing.position) (_endpos_str_ : Lexing.position) (_startofs_str_ : int) (_endofs_str_ : int) (_loc_str_ : Lexing.position * Lexing.position) ->
    (
# 100 "parser.mly"
    ( TIdent(str) )
# 342 "parser.ml"
     : 'tv_typ) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 98 "parser.mly"
   _1
# 347 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 98 "parser.mly"
           ( TChar )
# 352 "parser.ml"
     : 'tv_typ) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 97 "parser.mly"
   _1
# 357 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 97 "parser.mly"
           ( TInt )
# 362 "parser.ml"
     : 'tv_typ) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 96 "parser.mly"
   _1
# 367 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 96 "parser.mly"
           ( TVoid )
# 372 "parser.ml"
     : 'tv_typ) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 141 "parser.mly"
                               _3
# 377 "parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 141 "parser.mly"
              e
# 381 "parser.ml"
   : 'tv_option_expr_) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 141 "parser.mly"
   _1
# 385 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 142 "parser.mly"
  ( 
    match e with
    | Some e -> SReturn(Some e)
    | None -> SReturn(None)
  )
# 394 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 140 "parser.mly"
            _2
# 399 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 140 "parser.mly"
   _1
# 403 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 140 "parser.mly"
                  ( SBreak )
# 408 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 139 "parser.mly"
                                 s
# 413 "parser.ml"
   : 'tv_stmt) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) (
# 139 "parser.mly"
                           _4
# 417 "parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 139 "parser.mly"
                  e
# 421 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 139 "parser.mly"
            _2
# 425 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 139 "parser.mly"
   _1
# 429 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 139 "parser.mly"
                                          ( SWhile(e, s) )
# 434 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 120 "parser.mly"
                                                               else_s
# 439 "parser.ml"
   : 'tv_option_stmt_) (_startpos_else_s_ : Lexing.position) (_endpos_else_s_ : Lexing.position) (_startofs_else_s_ : int) (_endofs_else_s_ : int) (_loc_else_s_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
                                           has_else
# 443 "parser.ml"
   : 'tv_option_ELSE_) (_startpos_has_else_ : Lexing.position) (_endpos_has_else_ : Lexing.position) (_startofs_has_else_ : int) (_endofs_has_else_ : int) (_loc_has_else_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
                              if_s
# 447 "parser.ml"
   : 'tv_stmt) (_startpos_if_s_ : Lexing.position) (_endpos_if_s_ : Lexing.position) (_startofs_if_s_ : int) (_endofs_if_s_ : int) (_loc_if_s_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
                        _4
# 451 "parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
               e
# 455 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
         _2
# 459 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 120 "parser.mly"
   _1
# 463 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 121 "parser.mly"
  ( 
    match has_else with 
    | Some has_else -> 
      begin match else_s with
      | Some else_s -> 
        SIf(e, if_s, Some else_s)
      | None -> 
        let msg = "Parse error: No else stmt though \"else\" clause provided" in
        parse_error 1 msg
      end
    | None ->
      begin match else_s with
      | None -> SIf(e, if_s, None)
      | Some else_s ->
        let msg = "Parse error: No else clause found for else stmt" in
        parse_error 1 msg
      end
  )
# 485 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 119 "parser.mly"
                           _3
# 490 "parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 119 "parser.mly"
         stmt_list
# 494 "parser.ml"
   : 'tv_list_stmt_) (_startpos_stmt_list_ : Lexing.position) (_endpos_stmt_list_ : Lexing.position) (_startofs_stmt_list_ : int) (_endofs_stmt_list_ : int) (_loc_stmt_list_ : Lexing.position * Lexing.position) (
# 119 "parser.mly"
   _1
# 498 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 119 "parser.mly"
                                ( SScope(stmt_list) )
# 503 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 118 "parser.mly"
                    _2
# 508 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 118 "parser.mly"
    stmt
# 512 "parser.ml"
   : 'tv_varassign) (_startpos_stmt_ : Lexing.position) (_endpos_stmt_ : Lexing.position) (_startofs_stmt_ : int) (_endofs_stmt_ : int) (_loc_stmt_ : Lexing.position * Lexing.position) ->
    (
# 118 "parser.mly"
                         ( stmt )
# 517 "parser.ml"
     : 'tv_stmt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 71 "parser.mly"
                _2
# 522 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 71 "parser.mly"
    ast
# 526 "parser.ml"
   : 'tv_global) (_startpos_ast_ : Lexing.position) (_endpos_ast_ : Lexing.position) (_startofs_ast_ : int) (_endofs_ast_ : int) (_loc_ast_ : Lexing.position * Lexing.position) ->
    ((
# 71 "parser.mly"
                      ( ast )
# 531 "parser.ml"
     : 'tv_program) : (
# 64 "parser.mly"
      (Ast_types.p)
# 535 "parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 165 "parser.mly"
    p_list
# 540 "parser.ml"
   : 'tv_separated_list_COMMA_pair_typ_IDENT__) (_startpos_p_list_ : Lexing.position) (_endpos_p_list_ : Lexing.position) (_startofs_p_list_ : int) (_endofs_p_list_ : int) (_loc_p_list_ : Lexing.position * Lexing.position) ->
    (
# 165 "parser.mly"
                                                   ( p_list )
# 545 "parser.ml"
     : 'tv_params) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 151 "parser.mly"
    str
# 550 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 554 "parser.ml"
  )) (_startpos_str_ : Lexing.position) (_endpos_str_ : Lexing.position) (_startofs_str_ : int) (_endofs_str_ : int) (_loc_str_ : Lexing.position * Lexing.position) ->
    (
# 151 "parser.mly"
                 ( EVar(str) )
# 559 "parser.ml"
     : 'tv_lvalue) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                                                                     _8
# 564 "parser.ml"
   : unit) (_startpos__8_ : Lexing.position) (_endpos__8_ : Lexing.position) (_startofs__8_ : int) (_endofs__8_ : int) (_loc__8_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                                                   stmt_list
# 568 "parser.ml"
   : 'tv_list_stmt_) (_startpos_stmt_list_ : Lexing.position) (_endpos_stmt_list_ : Lexing.position) (_startofs_stmt_list_ : int) (_endofs_stmt_list_ : int) (_loc_stmt_list_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                                             _6
# 572 "parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                                        _5
# 576 "parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                             p
# 580 "parser.ml"
   : 'tv_params) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
                       _3
# 584 "parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
             i
# 588 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 592 "parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) (
# 168 "parser.mly"
    t
# 596 "parser.ml"
   : 'tv_typ) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) ->
    (
# 169 "parser.mly"
    ( GFuncDef(t, i, p, stmt_list) )
# 601 "parser.ml"
     : 'tv_global) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 115 "parser.mly"
                  _3
# 606 "parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 115 "parser.mly"
         e
# 610 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 115 "parser.mly"
   _1
# 614 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 115 "parser.mly"
                       ( e )
# 619 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 111 "parser.mly"
                                                       _4
# 624 "parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 111 "parser.mly"
                    e_list
# 628 "parser.ml"
   : 'tv_separated_list_COMMA_expr_) (_startpos_e_list_ : Lexing.position) (_endpos_e_list_ : Lexing.position) (_startofs_e_list_ : int) (_endofs_e_list_ : int) (_loc_e_list_ : Lexing.position * Lexing.position) (
# 111 "parser.mly"
              _2
# 632 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 111 "parser.mly"
    i
# 636 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 640 "parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 112 "parser.mly"
    ( ECall(i, e_list) )
# 645 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 109 "parser.mly"
                e
# 650 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 109 "parser.mly"
    uop
# 654 "parser.ml"
   : 'tv_unop) (_startpos_uop_ : Lexing.position) (_endpos_uop_ : Lexing.position) (_startofs_uop_ : int) (_endofs_uop_ : int) (_loc_uop_ : Lexing.position * Lexing.position) ->
    (
# 109 "parser.mly"
                         ( EUnOp(uop, e))
# 659 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 108 "parser.mly"
                            e2
# 664 "parser.ml"
   : 'tv_expr) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 108 "parser.mly"
               bop
# 668 "parser.ml"
   : 'tv_binop) (_startpos_bop_ : Lexing.position) (_endpos_bop_ : Lexing.position) (_startofs_bop_ : int) (_endofs_bop_ : int) (_loc_bop_ : Lexing.position * Lexing.position) (
# 108 "parser.mly"
    e1
# 672 "parser.ml"
   : 'tv_expr) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 108 "parser.mly"
                                      ( EBinOp(bop, e1, e2) )
# 677 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 106 "parser.mly"
    c
# 682 "parser.ml"
   : (
# 56 "parser.mly"
       (char)
# 686 "parser.ml"
  )) (_startpos_c_ : Lexing.position) (_endpos_c_ : Lexing.position) (_startofs_c_ : int) (_endofs_c_ : int) (_loc_c_ : Lexing.position * Lexing.position) ->
    (
# 106 "parser.mly"
             ( EChar(c) )
# 691 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 105 "parser.mly"
    num
# 696 "parser.ml"
   : (
# 55 "parser.mly"
       (int)
# 700 "parser.ml"
  )) (_startpos_num_ : Lexing.position) (_endpos_num_ : Lexing.position) (_startofs_num_ : int) (_endofs_num_ : int) (_loc_num_ : Lexing.position * Lexing.position) ->
    (
# 105 "parser.mly"
                 ( EInt(num) )
# 705 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 104 "parser.mly"
    str
# 710 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 714 "parser.ml"
  )) (_startpos_str_ : Lexing.position) (_endpos_str_ : Lexing.position) (_startofs_str_ : int) (_endofs_str_ : int) (_loc_str_ : Lexing.position * Lexing.position) ->
    (
# 104 "parser.mly"
                ( EVar(str) )
# 719 "parser.ml"
     : 'tv_expr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 93 "parser.mly"
   _1
# 724 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 93 "parser.mly"
         ( BopOr )
# 729 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 92 "parser.mly"
   _1
# 734 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 92 "parser.mly"
         ( BopAnd )
# 739 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 91 "parser.mly"
   _1
# 744 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 91 "parser.mly"
         ( BopBitOr )
# 749 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 90 "parser.mly"
   _1
# 754 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 90 "parser.mly"
         ( BopBitAnd )
# 759 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 89 "parser.mly"
   _1
# 764 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 89 "parser.mly"
         ( BopNeq )
# 769 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 88 "parser.mly"
   _1
# 774 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 88 "parser.mly"
         ( BopEqto )
# 779 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 87 "parser.mly"
   _1
# 784 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 87 "parser.mly"
         ( BopGteq )
# 789 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 86 "parser.mly"
   _1
# 794 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 86 "parser.mly"
         ( BopLteq )
# 799 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 85 "parser.mly"
   _1
# 804 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 85 "parser.mly"
         ( BopGt )
# 809 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 84 "parser.mly"
   _1
# 814 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 84 "parser.mly"
         ( BopLt )
# 819 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 83 "parser.mly"
   _1
# 824 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 83 "parser.mly"
         ( BopMod )
# 829 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 82 "parser.mly"
   _1
# 834 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 82 "parser.mly"
         ( BopDiv )
# 839 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 81 "parser.mly"
   _1
# 844 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 81 "parser.mly"
         ( BopMul )
# 849 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 80 "parser.mly"
   _1
# 854 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 80 "parser.mly"
         ( BopSub )
# 859 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 79 "parser.mly"
   _1
# 864 "parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 79 "parser.mly"
         ( BopAdd )
# 869 "parser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 158 "parser.mly"
                   _2
# 874 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 158 "parser.mly"
    ident
# 878 "parser.ml"
   : 'tv_lvalue) (_startpos_ident_ : Lexing.position) (_endpos_ident_ : Lexing.position) (_startofs_ident_ : int) (_endofs_ident_ : int) (_loc_ident_ : Lexing.position * Lexing.position) ->
    (
# 158 "parser.mly"
                         ( EBinOp("-", ident, EInt(1)) )
# 883 "parser.ml"
     : 'tv_assign) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 157 "parser.mly"
                   _2
# 888 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 157 "parser.mly"
    ident
# 892 "parser.ml"
   : 'tv_lvalue) (_startpos_ident_ : Lexing.position) (_endpos_ident_ : Lexing.position) (_startofs_ident_ : int) (_endofs_ident_ : int) (_loc_ident_ : Lexing.position * Lexing.position) ->
    (
# 157 "parser.mly"
                         ( EBinOp("+", ident, EInt(1)) )
# 897 "parser.ml"
     : 'tv_assign) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 156 "parser.mly"
                         e
# 902 "parser.ml"
   : 'tv_expr) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 156 "parser.mly"
                   _2
# 906 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 156 "parser.mly"
    e_var
# 910 "parser.ml"
   : 'tv_lvalue) (_startpos_e_var_ : Lexing.position) (_endpos_e_var_ : Lexing.position) (_startofs_e_var_ : int) (_endofs_e_var_ : int) (_loc_e_var_ : Lexing.position * Lexing.position) ->
    (
# 156 "parser.mly"
                                  ( SVarAssign(e_var, e) )
# 915 "parser.ml"
     : 'tv_assign) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 155 "parser.mly"
                                                       _4
# 920 "parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 155 "parser.mly"
                    e_list
# 924 "parser.ml"
   : 'tv_separated_list_COMMA_expr_) (_startpos_e_list_ : Lexing.position) (_endpos_e_list_ : Lexing.position) (_startofs_e_list_ : int) (_endofs_e_list_ : int) (_loc_e_list_ : Lexing.position * Lexing.position) (
# 155 "parser.mly"
              _2
# 928 "parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 155 "parser.mly"
    i
# 932 "parser.ml"
   : (
# 31 "parser.mly"
       (string)
# 936 "parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 155 "parser.mly"
                                                            ( ECall(i, e_list) )
# 941 "parser.ml"
     : 'tv_assign) in
  ((let rec diverge() = diverge() in diverge()) : 'tv_varassign * 'tv_unop * 'tv_typ * 'tv_stmt * 'tv_separated_nonempty_list_COMMA_pair_typ_IDENT__ * 'tv_separated_nonempty_list_COMMA_expr_ * 'tv_separated_list_COMMA_pair_typ_IDENT__ * 'tv_separated_list_COMMA_expr_ * 'tv_program * 'tv_params * 'tv_pair_typ_IDENT_ * 'tv_option_stmt_ * 'tv_option_expr_ * 'tv_option_ELSE_ * 'tv_lvalue * 'tv_loption_separated_nonempty_list_COMMA_pair_typ_IDENT___ * 'tv_loption_separated_nonempty_list_COMMA_expr__ * 'tv_list_stmt_ * 'tv_global * 'tv_expr * 'tv_binop * 'tv_assign)

and menhir_end_marker =
  0
