%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}
%%
(ab)*c|a;
%%
int main(){
yylex();
return 0;
}
