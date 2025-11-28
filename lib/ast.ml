(* ast.ml *)

open Types

type expr =
  | Int of int
  | Boolean of bool
  | String of string
  | Var of string
  | App of expr * expr   
  | Lambda of (string * typ) * expr
  | Let of string * typ * expr * expr
  | If of expr * expr * expr
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Divide of expr * expr
  | Modulo of expr * expr
  | Tuple of expr list
  | List of expr list

type constructor =
  | Ctor of string * typ list

type type_decl =
  | SumType of string * constructor list

type toplevel =
  | TopLet of string * typ * expr
  | TopFun of string * (string * typ) list * typ * expr
  | TopType of type_decl
  | TopInclude of string