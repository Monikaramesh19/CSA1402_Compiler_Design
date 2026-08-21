%{
#include <stdio.h>
%}

%%
^[0-9]$ {
    printf("It is a DIGIT\n");
}

.* {
    printf("It is NOT a digit\n");
}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a character: ");
    yylex();

    return 0;
}
