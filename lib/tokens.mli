(* tokens.mli *)

type token =
  | LET
  | FUN
  | IF
  | THEN
  | ELSE
  | TYPE
  | INCLUDE
  | INT of int
  | BOOL of bool
  | STRING of string
  | IDENT of string
  | COLON
  | ARROW
  | EQ
  | LPAREN
  | RPAREN
  | COMMA
  | PLUS
  | MINUS
  | MULT
  | DIV
  | MOD
  | EOF

let show_token = function
  | LET -> "LET"
  | FUN -> "FUN"
  | IF -> "IF"
  | THEN -> "THEN"
  | ELSE -> "ELSE"
  | TYPE -> "TYPE"
  | INCLUDE -> "INCLUDE"
  | INT i -> "INT(" ^ string_of_int i ^ ")"
  | BOOL b -> "BOOL(" ^ string_of_bool b ^ ")"
  | STRING s -> "STRING(" ^ s ^ ")"
  | IDENT s -> "IDENT(" ^ s ^ ")"
  | COLON -> "COLON"
  | ARROW -> "ARROW"
  | EQ -> "EQ"
  | LPAREN -> "LPAREN"
  | RPAREN -> "RPAREN"
  | COMMA -> "COMMA"
  | PLUS -> "PLUS"
  | MINUS -> "MINUS"
  | MULT -> "MULT"
  | DIV -> "DIV"
  | MOD -> "MOD"
  | EOF -> "EOF"