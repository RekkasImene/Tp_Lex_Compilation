%{

#include<stdlib.h>
#include<stdio.h>

int yywrap();
%}
%%
"2CSSIQ"|"2CSSIL" { yytext="1CS"; fprintf(yyout, "%s",yytext);fflush(yyout);}
. {fprintf(yyout, "%s",yytext);fflush(yyout);}
%%
int yywrap(){return 0;}
int main(void)
{
yyin=fopen("in.txt","r");
yyout=fopen("out.txt","w");
return yylex();
fclose(yyin);
fclose(yyout);
}