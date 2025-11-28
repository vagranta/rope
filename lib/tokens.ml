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