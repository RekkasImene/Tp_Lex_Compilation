%{
#include<stdlib.h>
#include<stdio.h>
int yywrap();
%}
%%

\%[abc\%]+\% {printf("un lexeme= %s",yytext);}

.+ {printf("le mot lu n'appartient pas au langage = %s\n",yytext);}

%%
int yywrap(){return 0; }
int main(void){
return yylex();}

