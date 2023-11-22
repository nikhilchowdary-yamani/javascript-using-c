%{
#include<stdio.h>
%}
%token NUMBER
%token FLOAT
%token STRING
%token ID
%token OPERATOR
%token WHILE
%token DO
%token PRINT
%token CONST
%token NA
%token FUN
%token RETURN
%token EQ
%token IF
%token ELSE
%%
S: WHILE'('C')' '{'PRINT'('ID')' '}' { printf("correct");}
| DO'{'PRINT'('ID')' '}' WHILE'('C')' { printf("correct");}
| FUN'['N']' '{'FV'}' { printf("correct");}
| X { printf("correct");}
| IF'(' C ')' PRINT'('ID')' { printf("correct");}
| IF'(' C ')' '{'PRINT'('ID')' '}' ':' ELSE '{'PRINT'('ID')' '}' { printf("correct");}
;
X: CONST'('ID')'EQ NA V
;
V: '('T')'
;
C: ID OPERATOR ID
;
T: STRING','T
|NUMBER','T
|FLOAT','T
|STRING
|NUMBER
|FLOAT
;
N: ID'('P')'
;
P: ID','P
| ID
|
;
FV: RETURN'('E')'
;
E: ID
| ID OPERATOR ID
;
%%
int main(){
yyparse();
} int yywrap(){
return 1;
}
void yyerror(char *s){
printf("Error %s",s);
}