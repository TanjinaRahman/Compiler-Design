%{
#include<stdio.h>
#include<ctype.h>
int yylex(void);
int yyerror(char *);
int yyval=0;
%}

%token DIGIT

%%
line :expr '\n' {printf("%d",$1);}
     ;
expr :expr '+' term { $$ = $1 + $3;}
     |term
     ;
term :term '*' fact { $$ = $1 * $3;}
     |fact
     ;
fact :'('expr')' {$$ = $2;}
     |dgit
     ;
dgit :dgit B {$$ = $1 *10 + $2;}
     |B
     ;
B    :DIGIT {$$ = $1;}
%%

yylex(){
int c;
c=getchar();
if (isdigit(c)) {
yylval = c-'0';
return DIGIT;
}
return c;
}
int yyerror(char *s)
{
 printf("%s\n",s);
}
int main()
{
yyparse();
return 0;
}
int yywrap(void)
{
return 0;
}

