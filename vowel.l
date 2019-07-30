%{
#include<stdio.h>
int v=0,c=0,s=0;
%}


%%
[aeiouAEIOU]	{v++;} 
[a-zA-Z]	{c++;}
[ ] {s++;}
"\n" {printf("vowel = %d\n", v);v=0;
      printf("consonant = %d\n", c);c=0;
      printf("space = %d\n", s);s=0;} 
        
%%

int yywrap(){}

int main(){

yylex();

}
