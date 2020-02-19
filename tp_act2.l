%{
#include<stdio.h>
#include<stdlib.h>
int yywrap();

%}
num [0-9]
lettre [a-zA-Z]
%%
num+ {printf("le nombre = %s de taille = %d\n",yytext,yyleng);}
lettre+ {printf("le mot = %s de taille = %d\n",yytext,yyleng);}
.+ {printf("Un mot indesirable = %s de taille = %d\n",yytext,yyleng);}

%%
int yywrap(){return 0;}

main(void){
return yylex();
}
