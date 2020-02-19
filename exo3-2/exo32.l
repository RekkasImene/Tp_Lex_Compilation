%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}
lettre [a-z]+
chiffre [0-9]+
%%
({lettre}|{chiffre})+ {if (yyleng==8) printf("mot de passe %s",yytext);
 else printf("Identificateur %s",yytext);};

%%

int main(){
yylex();
return 0;

}
