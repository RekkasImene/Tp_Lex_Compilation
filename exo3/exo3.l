%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}

%%
%[abc%]+% printf("lexeme %s",yytext);
.
%%

int main(){
yylex();
return 0;

}
