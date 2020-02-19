%{

#include<stdlib.h>
#include<stdio.h>

int yywrap();
%}

%%
"main"|"if"|"else"|"while" {fprintf(yyout,"(mot-cle,%s)",yytext);fflush(yyout);}
[a-z A-Z]([a-zA-Z0-9]*) {fprintf(yyout,"(identificateur,%s)",yytext);fflush(yyout);}
[1-9][0-9]* {fprintf(yyout,"(constante,%s)",yytext);fflush(yyout);}
.

%%
int yywrap(){return 0;}
int main(void)
{
yyin=fopen("in.txt","r");
yyout=fopen("out.txt","w");
return yylex();
fclose(yyin);
fclose( yyout);
}
