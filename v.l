%{
#include "y.tab.h"
extern int yyval;
int l=0, d=0, s=0;
%}

letter [a-zA-Z]+
digit [a-zA-Z]+[0-9]+
sc [a-zA-Z]+[_]+
%%
{letter} {l++;
           return L;
            } 
{digit} {d++;
           return D;
            } 
{sc} {s++;
           return L;
            } 

[ \t] {;}
\n {return 0;}
. { return yytext[0];}
%%
