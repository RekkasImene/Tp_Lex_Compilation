%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}




int main()
{
extern FILE *yyin, *yyout;


   yyin = fopen("Input.txt", "r"); 
   yyout = fopen("Output.txt", "w");
   yylex();
   return 0;
   }
