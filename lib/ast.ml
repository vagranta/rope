(* ast.ml *)

type expr =
  (* Literals *)
  | Int of int
  | Boolean of bool
  | String of string
  (* Operations *)
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Divide of expr * expr
  | Modulo of expr * expr

type stmt =
  | Let of string * expr
  | Expr of expr
  | If of expr * stmt list * stmt list
  | While of expr * stmt list
  | For of string * expr * expr * stmt list
  | Func of string * string list * stmt list
  | Return of expr
  | Include of string