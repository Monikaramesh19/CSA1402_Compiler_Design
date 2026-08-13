%{
#include<stdio.h>
%}

%%
[A-Z]+ {
    printf("Capital Letters : %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Identifier : %s\n", yytext);
}

[0-9]+ {
    printf("Number\n");
}

\n { return 0; }

. ;
%%

int main()
{
    printf("Enter Input: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}