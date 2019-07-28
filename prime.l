%{

   #include<stdio.h>
   #include<stdlib.h> 

int n,flag,i;
%}


%%

[0-9]+ {n=atoi(yytext);
       
       flag=0;

       for(i=2;i<=n/2;i++)
	{
	  if(n%i==0){
            flag=1;
            break;}
	}

	if(flag == 0 && n!=1)
	   printf("%d is Prime",n);
        else 
	   printf("%d is NOT Prime",n);
	
	
      }

%%

int yywrap(){}

int main(){

yylex();
return 0;
}
