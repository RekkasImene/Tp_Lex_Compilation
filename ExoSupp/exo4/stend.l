%{

#include<stdlib.h>
#include<stdio.h>

int yywrap();
%}
%%

%%
int yywrap(){return 0;}
int main(void)
{
return yylex();
}