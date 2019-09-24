%{
#include<stdio.h>
#include<stdlib.h>
%}
%token L
%token D
%token S

%%
stmt : E
     ;
E : L {printf("valid \n");}
  | D {printf("valid \n");}
  | S {printf("valid \n");}
  ;
%%

int main(){
printf("Enter variable name : \n");
yyparse();
}

int yyerror(char *s)
{
 printf("Invalid\n");
}

