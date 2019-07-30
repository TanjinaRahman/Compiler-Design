%{ 
#include<stdio.h> 
int  sc=0, tc=0, ch=0; 
%} 
  

%%  
[ ] {sc++;}  
\t {tc++;} 
. {ch++;} 

"\n" {  
      printf("\nNo. of spaces=%d", sc); sc=0; 
      printf("\nNo. of tabs=%d", tc); tc=0;
      printf("\nNo. of other characters=%d", ch); ch=0; }    

%% 

int yywrap(){ } 

int main() 
{ 
    yylex(); 
      
    return 0;  
} 
