%{
open Ast
%}

%type <Ast.toplevel list> program
%start program

%token LET
%token FUN
%token IF
%token THEN
%token ELSE
%token TYPE
%token INCLUDE

%token <bool> BOOL
%token <string> STRING
%token <int> INT
%token <string> IDENT

%token COLON
%token ARROW
%token EQ
%token LPAREN
%token RPAREN
%token COMMA

%token PLUS
%token MINUS
%token MULT
%token DIV
%token MOD

%token EOF

%%

(* for later. *)