%{

#include<stdlib.h>
#include<stdio.h>

int yywrap();
%}
%start U L E
%%
<YYINITIAL> "E" {BEGIN E;}
<YYINITIAL> "U" {BEGIN U;}
<YYINITIAL> "L" {BEGINE L;}
<E>
{
"1CSG"[0-9][0-9] {fprintf(yyout,"%s",yytext);fflush(yyout);}
"1CS" {yytext="2CSSIQ";fprintf(yyout,"%s",yytext);fflush(yyout);}
 ^"U" {BEGIN U;} 
 ^"L" {BEGIN L;} 
}
<U>
{
"1CSG"[0-9][0-9] {fprintf(yyout,"%s",yytext);fflush(yyout);}
"1CS" {yytext="2CSSIL";fprintf(yyout,"%s",yytext);fflush(yyout);}
 ^"E" {BEGIN E;} 
 ^"L" {BEGIN L;} 
}
<L>
{
"1CSG"[0-9][0-9] {fprintf(yyout,"%s",yytext);fflush(yyout);}
"1CS" {yytext="2CSSIT";fprintf(yyout,"%s",yytext);fflush(yyout);}
 ^"E" {BEGIN E;} 
 ^"U" {BEGIN U;} 
}
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
