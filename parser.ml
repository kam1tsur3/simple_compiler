type token =
  | NUM of (int)
  | STR of (string)
  | ID of (string)
  | INT
  | IF
  | WHILE
  | DO
  | SPRINT
  | IPRINT
  | SCAN
  | EQ
  | NEQ
  | GT
  | LT
  | GE
  | LE
  | ELSE
  | RETURN
  | NEW
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | REM
  | LB
  | RB
  | LS
  | RS
  | LP
  | RP
  | ASSIGN
  | SEMI
  | COMMA
  | TYPE
  | VOID
  | EXP
  | INC
  | PLEQ

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"

open Printf
open Ast

# 49 "parser.ml"
let yytransl_const = [|
  260 (* INT *);
  261 (* IF *);
  262 (* WHILE *);
  263 (* DO *);
  264 (* SPRINT *);
  265 (* IPRINT *);
  266 (* SCAN *);
  267 (* EQ *);
  268 (* NEQ *);
  269 (* GT *);
  270 (* LT *);
  271 (* GE *);
  272 (* LE *);
  273 (* ELSE *);
  274 (* RETURN *);
  275 (* NEW *);
  276 (* PLUS *);
  277 (* MINUS *);
  278 (* TIMES *);
  279 (* DIV *);
  280 (* REM *);
  281 (* LB *);
  282 (* RB *);
  283 (* LS *);
  284 (* RS *);
  285 (* LP *);
  286 (* RP *);
  287 (* ASSIGN *);
  288 (* SEMI *);
  289 (* COMMA *);
  290 (* TYPE *);
  291 (* VOID *);
  292 (* EXP *);
  293 (* INC *);
  294 (* PLEQ *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* STR *);
  259 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\004\000\004\000\005\000\005\000\
\005\000\005\000\006\000\006\000\007\000\007\000\009\000\009\000\
\010\000\010\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\013\000\013\000\014\000\014\000\008\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\012\000\012\000\012\000\012\000\012\000\
\012\000\000\000"

let yylen = "\002\000\
\001\000\001\000\004\000\001\000\002\000\000\000\003\000\005\000\
\006\000\006\000\003\000\001\000\000\000\001\000\004\000\002\000\
\002\000\001\000\004\000\004\000\003\000\007\000\005\000\007\000\
\006\000\005\000\005\000\005\000\005\000\005\000\005\000\003\000\
\001\000\001\000\000\000\001\000\003\000\001\000\004\000\001\000\
\001\000\004\000\004\000\003\000\003\000\003\000\003\000\003\000\
\003\000\002\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\006\000\034\000\058\000\001\000\033\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\040\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\050\000\000\000\000\000\000\000\000\000\000\000\
\000\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\
\018\000\000\000\005\000\000\000\000\000\000\000\000\000\019\000\
\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\051\000\
\000\000\000\000\046\000\047\000\048\000\049\000\000\000\000\000\
\000\000\000\000\000\000\000\000\039\000\017\000\000\000\031\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\026\000\000\000\027\000\028\000\029\000\043\000\042\000\030\000\
\000\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\
\025\000\003\000\004\000\000\000\000\000\000\000\000\000\000\000\
\011\000\022\000\024\000\008\000\016\000\000\000\000\000\000\000\
\010\000\000\000\009\000\015\000"

let yydgoto = "\002\000\
\014\000\015\000\133\000\034\000\067\000\100\000\134\000\016\000\
\135\000\068\000\042\000\043\000\037\000\038\000"

let yysindex = "\005\000\
\107\255\000\000\234\254\240\254\249\254\107\255\012\255\025\255\
\027\255\056\255\044\255\000\000\000\000\000\000\000\000\000\000\
\056\255\056\255\056\255\052\255\056\255\056\255\056\255\082\255\
\087\255\056\255\092\255\000\000\011\255\056\255\056\255\187\255\
\094\255\026\255\204\255\062\000\070\255\068\255\213\255\000\000\
\248\255\148\255\072\255\074\255\077\255\078\255\014\000\079\255\
\056\255\056\255\000\000\019\000\056\255\056\255\056\255\056\255\
\056\255\000\000\056\255\088\255\234\254\076\255\104\255\116\255\
\000\000\117\255\000\000\073\255\090\255\091\255\056\255\000\000\
\000\000\056\255\056\255\056\255\056\255\056\255\056\255\107\255\
\107\255\056\255\095\255\096\255\097\255\036\000\100\255\000\000\
\003\255\003\255\000\000\000\000\000\000\000\000\099\255\123\255\
\109\255\112\255\118\255\033\255\000\000\000\000\056\255\000\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\131\255\
\000\000\119\255\000\000\000\000\000\000\000\000\000\000\000\000\
\125\255\083\255\083\255\083\255\000\000\153\255\045\000\107\255\
\000\000\000\000\000\000\133\255\154\255\121\255\134\255\136\255\
\000\000\000\000\000\000\000\000\000\000\155\255\083\255\155\255\
\000\000\176\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\151\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\122\255\000\000\000\000\000\000\
\000\000\000\000\000\000\243\254\000\000\156\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\151\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\182\255\005\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\162\255\185\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\061\255\000\000\000\000\000\000\000\000\000\000\
\244\254\157\255\158\255\159\255\161\255\163\255\172\255\001\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\173\255\173\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\174\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\250\255\224\255\000\000\000\000\000\000\088\000\167\255\
\000\000\000\000\249\255\237\255\164\000\000\000"

let yytablesize = 354
let yytable = "\024\000\
\023\000\066\000\032\000\044\000\017\000\001\000\018\000\002\000\
\019\000\035\000\036\000\039\000\022\000\041\000\020\000\021\000\
\038\000\037\000\047\000\038\000\037\000\023\000\051\000\052\000\
\055\000\056\000\057\000\065\000\061\000\062\000\004\000\005\000\
\006\000\007\000\008\000\009\000\002\000\049\000\059\000\050\000\
\025\000\086\000\036\000\010\000\011\000\089\000\090\000\091\000\
\092\000\093\000\012\000\094\000\145\000\026\000\147\000\027\000\
\028\000\013\000\029\000\063\000\064\000\102\000\114\000\105\000\
\125\000\126\000\106\000\107\000\108\000\109\000\110\000\111\000\
\033\000\112\000\113\000\003\000\030\000\004\000\005\000\006\000\
\007\000\008\000\009\000\040\000\031\000\131\000\062\000\045\000\
\046\000\132\000\010\000\011\000\012\000\012\000\048\000\127\000\
\060\000\012\000\101\000\070\000\071\000\080\000\096\000\081\000\
\013\000\082\000\097\000\083\000\085\000\003\000\146\000\004\000\
\005\000\006\000\007\000\008\000\009\000\095\000\098\000\099\000\
\103\000\139\000\104\000\121\000\010\000\011\000\115\000\116\000\
\117\000\119\000\120\000\012\000\041\000\041\000\041\000\041\000\
\041\000\041\000\013\000\122\000\123\000\041\000\041\000\041\000\
\041\000\041\000\124\000\128\000\129\000\041\000\142\000\041\000\
\130\000\041\000\041\000\137\000\141\000\041\000\074\000\075\000\
\076\000\077\000\078\000\079\000\140\000\144\000\143\000\053\000\
\054\000\055\000\056\000\057\000\044\000\044\000\044\000\044\000\
\044\000\044\000\148\000\012\000\035\000\044\000\044\000\059\000\
\004\000\036\000\052\000\053\000\054\000\044\000\055\000\044\000\
\056\000\044\000\044\000\045\000\045\000\045\000\045\000\045\000\
\045\000\057\000\013\000\014\000\045\000\045\000\053\000\054\000\
\055\000\056\000\057\000\136\000\045\000\087\000\045\000\000\000\
\045\000\045\000\058\000\000\000\000\000\000\000\059\000\053\000\
\054\000\055\000\056\000\057\000\000\000\000\000\000\000\069\000\
\053\000\054\000\055\000\056\000\057\000\000\000\000\000\059\000\
\000\000\000\000\000\000\000\000\072\000\000\000\000\000\000\000\
\059\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\023\000\000\000\023\000\023\000\023\000\
\023\000\023\000\023\000\053\000\054\000\055\000\056\000\057\000\
\000\000\000\000\023\000\023\000\000\000\000\000\000\000\073\000\
\000\000\023\000\023\000\059\000\000\000\000\000\000\000\000\000\
\023\000\053\000\054\000\055\000\056\000\057\000\053\000\054\000\
\055\000\056\000\057\000\084\000\000\000\000\000\000\000\000\000\
\088\000\059\000\000\000\000\000\000\000\000\000\059\000\053\000\
\054\000\055\000\056\000\057\000\000\000\000\000\000\000\118\000\
\053\000\054\000\055\000\056\000\057\000\000\000\000\000\059\000\
\000\000\000\000\000\000\000\000\138\000\000\000\000\000\000\000\
\059\000\053\000\054\000\055\000\056\000\057\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\059\000"

let yycheck = "\006\000\
\000\000\034\000\010\000\023\000\027\001\001\000\029\001\003\001\
\031\001\017\000\018\000\019\000\029\001\021\000\037\001\038\001\
\030\001\030\001\026\000\033\001\033\001\029\001\030\000\031\000\
\022\001\023\001\024\001\034\000\003\001\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\032\001\027\001\036\001\029\001\
\029\001\049\000\050\000\018\001\019\001\053\000\054\000\055\000\
\056\000\057\000\025\001\059\000\142\000\029\001\144\000\029\001\
\001\001\032\001\003\001\034\001\035\001\068\000\082\000\071\000\
\032\001\033\001\074\000\075\000\076\000\077\000\078\000\079\000\
\029\001\080\000\081\000\003\001\021\001\005\001\006\001\007\001\
\008\001\009\001\010\001\032\001\029\001\003\001\004\001\006\001\
\002\001\122\000\018\001\019\001\032\001\033\001\003\001\103\000\
\003\001\025\001\026\001\030\001\033\001\030\001\027\001\030\001\
\032\001\029\001\003\001\030\001\030\001\003\001\143\000\005\001\
\006\001\007\001\008\001\009\001\010\001\030\001\003\001\003\001\
\031\001\128\000\032\001\001\001\018\001\019\001\032\001\032\001\
\032\001\030\001\032\001\025\001\011\001\012\001\013\001\014\001\
\015\001\016\001\032\001\031\001\029\001\020\001\021\001\022\001\
\023\001\024\001\029\001\017\001\030\001\028\001\030\001\030\001\
\028\001\032\001\033\001\003\001\003\001\036\001\011\001\012\001\
\013\001\014\001\015\001\016\001\032\001\030\001\033\001\020\001\
\021\001\022\001\023\001\024\001\011\001\012\001\013\001\014\001\
\015\001\016\001\003\001\025\001\030\001\020\001\021\001\036\001\
\003\001\030\001\030\001\030\001\030\001\028\001\030\001\030\001\
\030\001\032\001\033\001\011\001\012\001\013\001\014\001\015\001\
\016\001\030\001\030\001\030\001\020\001\021\001\020\001\021\001\
\022\001\023\001\024\001\124\000\028\001\050\000\030\001\255\255\
\032\001\033\001\032\001\255\255\255\255\255\255\036\001\020\001\
\021\001\022\001\023\001\024\001\255\255\255\255\255\255\028\001\
\020\001\021\001\022\001\023\001\024\001\255\255\255\255\036\001\
\255\255\255\255\255\255\255\255\032\001\255\255\255\255\255\255\
\036\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\003\001\255\255\005\001\006\001\007\001\
\008\001\009\001\010\001\020\001\021\001\022\001\023\001\024\001\
\255\255\255\255\018\001\019\001\255\255\255\255\255\255\032\001\
\255\255\025\001\026\001\036\001\255\255\255\255\255\255\255\255\
\032\001\020\001\021\001\022\001\023\001\024\001\020\001\021\001\
\022\001\023\001\024\001\030\001\255\255\255\255\255\255\255\255\
\030\001\036\001\255\255\255\255\255\255\255\255\036\001\020\001\
\021\001\022\001\023\001\024\001\255\255\255\255\255\255\028\001\
\020\001\021\001\022\001\023\001\024\001\255\255\255\255\036\001\
\255\255\255\255\255\255\255\255\032\001\255\255\255\255\255\255\
\036\001\020\001\021\001\022\001\023\001\024\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\036\001"

let yynames_const = "\
  INT\000\
  IF\000\
  WHILE\000\
  DO\000\
  SPRINT\000\
  IPRINT\000\
  SCAN\000\
  EQ\000\
  NEQ\000\
  GT\000\
  LT\000\
  GE\000\
  LE\000\
  ELSE\000\
  RETURN\000\
  NEW\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  REM\000\
  LB\000\
  RB\000\
  LS\000\
  RS\000\
  LP\000\
  RP\000\
  ASSIGN\000\
  SEMI\000\
  COMMA\000\
  TYPE\000\
  VOID\000\
  EXP\000\
  INC\000\
  PLEQ\000\
  "

let yynames_block = "\
  NUM\000\
  STR\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 26 "parser.mly"
             (  _1  )
# 331 "parser.ml"
               : Ast.stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "parser.mly"
           ( IntTyp )
# 337 "parser.ml"
               : 'ty))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 30 "parser.mly"
                     ( ArrayTyp (_3, IntTyp) )
# 344 "parser.ml"
               : 'ty))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 31 "parser.mly"
               ( NameTyp _1 )
# 351 "parser.ml"
               : 'ty))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decs) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dec) in
    Obj.repr(
# 34 "parser.mly"
                ( _1@_2 )
# 359 "parser.ml"
               : 'decs))
; (fun __caml_parser_env ->
    Obj.repr(
# 35 "parser.mly"
                ( [] )
# 365 "parser.ml"
               : 'decs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ty) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'ids) in
    Obj.repr(
# 38 "parser.mly"
                     ( List.map (fun x -> VarDec (_1,x)) _2 )
# 373 "parser.ml"
               : 'dec))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'ty) in
    Obj.repr(
# 39 "parser.mly"
                              ( [TypeDec (_2,_4)] )
# 381 "parser.ml"
               : 'dec))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'ty) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'fargs_opt) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 40 "parser.mly"
                                    ( [FuncDec(_2, _4, _1, _6)] )
# 391 "parser.ml"
               : 'dec))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'fargs_opt) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 41 "parser.mly"
                                      ( [FuncDec(_2, _4, VoidTyp, _6)] )
# 400 "parser.ml"
               : 'dec))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ids) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 44 "parser.mly"
                       ( _1@[_3] )
# 408 "parser.ml"
               : 'ids))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 45 "parser.mly"
                       ( [_1]  )
# 415 "parser.ml"
               : 'ids))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser.mly"
                        ( [] )
# 421 "parser.ml"
               : 'fargs_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fargs) in
    Obj.repr(
# 49 "parser.mly"
                        ( _1 )
# 428 "parser.ml"
               : 'fargs_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'fargs) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'ty) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "parser.mly"
                             ( _1@[(_3,_4)] )
# 437 "parser.ml"
               : 'fargs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'ty) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "parser.mly"
                             ( [(_1,_2)] )
# 445 "parser.ml"
               : 'fargs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 56 "parser.mly"
                   ( _1@[_2] )
# 453 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 57 "parser.mly"
                   ( [_1] )
# 460 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 60 "parser.mly"
                              ( Assign (Var _1, _3) )
# 468 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 61 "parser.mly"
                            ( Assign (Var _1, (CallFunc ("+", [(VarExp (Var _1)); _3]))) )
# 476 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 62 "parser.mly"
                       ( Assign (Var _1, (CallFunc ("+", [(VarExp (Var _1)); (IntExp 1)]))) )
# 483 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 63 "parser.mly"
                                       ( Assign (IndexedVar (Var _1, _3), _6) )
# 492 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 64 "parser.mly"
                              ( If (_3, _5, None) )
# 500 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 66 "parser.mly"
                              ( If (_3, _5, Some _7) )
# 509 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'stmt) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'cond) in
    Obj.repr(
# 67 "parser.mly"
                                ( Dowhile(_2, _5))
# 517 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'cond) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 68 "parser.mly"
                           ( While (_3, _5) )
# 525 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 69 "parser.mly"
                              ( CallProc ("sprint", [StrExp _3]) )
# 532 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    Obj.repr(
# 70 "parser.mly"
                              ( CallProc ("iprint", [_3]) )
# 539 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 71 "parser.mly"
                           ( CallProc ("scan", [VarExp (Var _3)]) )
# 546 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 72 "parser.mly"
                           ( CallProc ("new", [ VarExp (Var _3)]) )
# 553 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'aargs_opt) in
    Obj.repr(
# 73 "parser.mly"
                                ( CallProc (_1, _3) )
# 561 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 74 "parser.mly"
                           ( CallProc ("return", [_2]) )
# 568 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 75 "parser.mly"
             ( _1 )
# 575 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
            ( NilStmt )
# 581 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 79 "parser.mly"
                           ( [] )
# 587 "parser.ml"
               : 'aargs_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'aargs) in
    Obj.repr(
# 80 "parser.mly"
                           ( _1 )
# 594 "parser.ml"
               : 'aargs_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aargs) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                          ( _1@[_3] )
# 602 "parser.ml"
               : 'aargs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                           ( [_1] )
# 609 "parser.ml"
               : 'aargs))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'decs) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 87 "parser.mly"
                         ( Block (_2, _3) )
# 617 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 90 "parser.mly"
           ( IntExp _1  )
# 624 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 91 "parser.mly"
          ( VarExp (Var _1) )
# 631 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'aargs_opt) in
    Obj.repr(
# 92 "parser.mly"
                          ( CallFunc (_1, _3) )
# 639 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
                      ( VarExp (IndexedVar (Var _1, _3)) )
# 647 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
                      ( CallFunc ("+", [_1; _3]) )
# 655 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "parser.mly"
                       ( CallFunc ("-", [_1; _3]) )
# 663 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                       ( CallFunc ("*", [_1; _3]) )
# 671 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                     ( CallFunc ("/", [_1; _3]) )
# 679 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                     ( CallFunc ("%", [_1; _3]) )
# 687 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                     ( CallFunc ("^", [_1; _3]) )
# 695 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                               ( CallFunc("!", [_2]) )
# 702 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                   ( _2 )
# 709 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                     ( CallFunc ("==", [_1; _3]) )
# 717 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( CallFunc ("!=", [_1; _3]) )
# 725 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( CallFunc (">", [_1; _3]) )
# 733 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( CallFunc ("<", [_1; _3]) )
# 741 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( CallFunc (">=", [_1; _3]) )
# 749 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                     ( CallFunc ("<=", [_1; _3]) )
# 757 "parser.ml"
               : 'cond))
(* Entry prog *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let prog (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.stmt)
;;
