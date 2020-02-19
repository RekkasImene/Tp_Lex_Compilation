%{
int yywrap();
%}


%%

%[abc%]+% {printf("j'ai lu la chaine %s\n",yytext);};
.
%%
//compilation de c
int yywrap(){
return 0;
}
void main()
{
yylex();
}