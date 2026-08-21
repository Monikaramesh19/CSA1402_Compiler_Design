%{
#include <stdio.h>
%}

KEYWORD     auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while

IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*

%%
{KEYWORD} {
             printf("Keyword    : %s\n", yytext);
          }

{IDENTIFIER} {
               printf("Identifier : %s\n", yytext);
             }

[ \t\n]+     ;

.            ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("----- KEYWORDS AND IDENTIFIERS -----\n");
    yylex();

    return 0;
}
