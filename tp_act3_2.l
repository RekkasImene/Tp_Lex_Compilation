%{
#include<stdlib.h>
#include<stdio.h>
int yywrap();
%}

%%
[1-9a-zA-Z]* {
if (yyleng == 8) printf("mot de passe %s\n",yytext);
else printf("identificateur %s\n",yytext);
}
.

%%
int yywrap(){return 0; }
int main(void){
return yylex();}