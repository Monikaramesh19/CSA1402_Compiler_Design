%{
#include<stdio.h>
%}

%%
[aAeEiIoOuU] { printf("Vowel : %s\n", yytext); }

[a-zA-Z] { }

\n { return 0; }

. ;
%%

int main()
{
    printf("Enter a String: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}