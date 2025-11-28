(* typ.ml *)

type typ =
  | TInt
  | TBool
  | TString
  | TUnit
  | TFun of typ * typ
  | TVar of string
  | TTuple of typ list
  | TList of typ