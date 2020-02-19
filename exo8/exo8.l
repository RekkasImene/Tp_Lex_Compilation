%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>

%}
lettre [a-zA-Z]
chiffre [0-9]
Identificateur [a-zA-Z](0|{chiffre}+|{lettre}+)
Const  [0-9](0|{chiffre}+)
motcle "main"|"if"|"else"|"while"|"do"|"switch"|"of"|"break"
opera "<"|"<="|"="|"<>"|">"|">="|"+"|"-"


%%
{motcle} {fprintf(yyout,"(motcle, %s)",yytext);fflush(yyout);}
{opera}  {fprintf(yyout,"(opera, %s)",yytext);fflush(yyout);}
{Identificateur} {fprintf(yyout,"(Ident, %s)",yytext);fflush(yyout);}
{Const} {fprintf(yyout,"(Const, %s)",yytext);fflush(yyout);}

%%

int main(){
yyin=fopen("test.txt","r");
yyout=fopen("test2.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;

}
