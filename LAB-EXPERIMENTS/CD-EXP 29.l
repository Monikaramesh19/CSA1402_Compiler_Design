%{
#include <stdio.h>
%}

KEYWORD     int|float|char|double|void|if|else|for|while|do|switch|case|break|continue|return
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*
NUMBER      [0-9]+(\.[0-9]+)?
OPERATOR    "=="|"!="|"<="|">="|"++"|"--"|"&&"|"||"|[+\-*/%=<>!]
SEPARATOR   [(){}\[\],;:]

%%
{KEYWORD}       { printf("Keyword     : %s\n", yytext); }

{IDENTIFIER}    { printf("Identifier  : %s\n", yytext); }

{NUMBER}        { printf("Constant    : %s\n", yytext); }

{OPERATOR}      { printf("Operator    : %s\n", yytext); }

{SEPARATOR}     { printf("Separator   : %s\n", yytext); }

"//".*          ;

"/*"([^*]|\*+[^*/])*\*+"/" ;

[ \t\n]+        ;

\"([^\\\"]|\\.)*\" {
                    printf("String      : %s\n", yytext);
                  }

.               {
                    printf("Unknown     : %s\n", yytext);
                }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("----- LEXICAL ANALYZER -----\n\n");

    yylex();

    return 0;
}
