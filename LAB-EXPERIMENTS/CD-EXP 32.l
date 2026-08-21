%{
#include <stdio.h>

int positive = 0;
int negative = 0;
%}

%%
-[0-9]+     {
                printf("Negative Number: %s\n", yytext);
                negative++;
            }

[+]?[0-9]+  {
                printf("Positive Number: %s\n", yytext);
                positive++;
            }

[ \t\n]+    ;

.           ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("\nPositive numbers = %d\n", positive);
    printf("Negative numbers = %d\n", negative);

    return 0;
}
