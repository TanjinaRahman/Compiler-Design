%{
#include<stdio.h>
%}
%%

[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("f.txt","r");		
yyout=fopen("f1.txt","w");

yylex();
return 0;
}
