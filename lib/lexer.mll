{
    open Tokens
    exception LexerErr of string
}

let digit  = ['0'-'9']
let letter = ['a'-'z' 'A'-'Z' '_']
let ident  = letter (letter | digit)*
let ws     = [' ' '\t' '\n' '\r']+

rule token = parse
  | ws               { token lexbuf }
  | '#' [^ '\n']*    { token lexbuf }
  | "let"            { LET }
  | "fun"            { FUN }
  | "if"             { IF }
  | "then"           { THEN }
  | "else"           { ELSE }
  | "type"           { TYPE }
  | "include"        { INCLUDE }
  | "true"           { BOOL true }
  | "false"          { BOOL false }
  | '"' ([^ '"' '\\'] | '\\' )* '"' as s {
        let len = String.length s in
        STRING (String.sub s 1 (len - 2))
    }
  | digit+ as d      { INT (int_of_string d) }
  | ident as id      { IDENT id }
  | ":"              { COLON }
  | "->"             { ARROW }
  | "="              { EQ }
  | "("              { LPAREN }
  | ")"              { RPAREN }
  | ","              { COMMA }
  | "+"              { PLUS }
  | "-"              { MINUS }
  | "*"              { MULT }
  | "/"              { DIV }
  | "%"              { MOD }
  | eof              { EOF }
  | _ as c           { raise (LexError ("Unknown character: " ^ Char.escaped c)) }