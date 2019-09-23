%{
#include<stdio.h>
#include<stdlib.h>
%}
%token OP

%%
S : E
  ;
E : E'+'E
  |E'-'E
  |E'*'E
  |E'/'E
  |'('E')'
  |OP
  ;
%%

int main(){
printf("enter expr : \n");
yyparse();
printf("valid exp\n");
exit(0);
}

void yyerror(char *s)
{
  printf("invalid exp\n");
exit(0);
}
