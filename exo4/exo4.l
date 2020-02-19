%option noyywrap
%{#include<stdio.h>
#include <stdlib.h>
%}
siq 2CSSIQ
sil 2CSSIL

%%
{siq}|{sil} {yytext="1CS";printf("%s",yytext);fprintf(yyout,"%s",yytext);
fflush(yyout);}
 [^{siq}|{sil}] {fprintf(yyout,"%s",yytext);fflush(yyout);}
%%
int main(){
yyout=fopen("test.txt","w");
yylex();
fclose(yyout);
return 0;

}
