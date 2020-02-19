%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}

%%
[0-9]* printf("chiffres:%d",yyleng);
[a-z]* printf("lettres:%d",yyleng);
%%

int main(){
yylex();
return 0;

}
