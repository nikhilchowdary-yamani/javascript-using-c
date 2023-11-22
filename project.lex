%{
#include "project.tab.h"
%}
%%
"if" {return IF;}
"else" {return ELSE;}
"while" {return WHILE;}
"do" {return DO;}
"console.log" {return PRINT;}
"const" {return CONST;}
"new Array" {return NA;}
"function" {return FUN;}
"return" {return RETURN;}
"=" {return EQ;}
[0-9]+ {return NUMBER;}
[0-9]+\.[0-9]* {return FLOAT;}
\'[A-Za-z]*\' {return STRING;}
[A-Za-z][A-Za-z0-9]* {return ID;}
["+"|"-"|"*"|"%"|"/"|"<="|"<"|">="|">"|"=="] {return OPERATOR;}
[\t] ;
\n return 0;
. return yytext[0];
%%