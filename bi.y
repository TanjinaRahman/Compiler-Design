%{
#include<stdio.h>
int yyval;
int yylex(void);
int yywrap(void);
int yyerror(char *s);
%}

%token Z

%%
E :A '\n' {printf("%d",$1);}
  ;
A :A B {$$ = $1 *2 + $2;}
  |B 
  ;
B :Z {$$ = $1;}
  ;

%%

yylex(){
int c;
c=getchar();
if(isdigit(c)){
yylval = c-'0';
return Z;
}
return c;
}

int yyerror(char *s)
{
 printf("%s\n",s);
}

int main(){
yyparse();

return 0;
}

int yywrap(void)
{
return 0;
}


