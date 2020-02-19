%{
#include<stdlib.h>
#include<stdio.h>
int yywrap();
%}

%%

"2CSSIQ"|"2CSSIL" fprintf(yyout,"2CS");
. fprintf(yyout,yytext);

%%
int yywrap(){return 1; }

int main(void){
	yyin=fopen("in.txt","r");
	yyout=fopen("out.txt","w");
	return yylex();
	fclose(yyout);
	fclose(yyin);
	}