%{

#include<stdlib.h>
#include<stdio.h>

int yywrap();
%}

%%
(ab)*c|a printf("mot = %s est reconnu\n",yytext);
.* printf("mot = %s n'est pas reconnu\n",yytext);
%%
int yywrap(){return 0;}
int main(void)
{
return yylex();
}