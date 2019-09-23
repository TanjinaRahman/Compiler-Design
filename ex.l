%{
#include "y.tab.h"
extern int yyval;
int d=0;
%}

operand [a-zA-Z0-9]+
operator [+\-\/*]
%%
{operator} {d++;
            //printf("%s is an operator \n",yytext);
           return OP;
            } 

[ \t] {;}
\n {return 0;}
. { return yytext[0];}
%%
