%{
#include<stdio.h>
%}

%%
[a-zA-Z]+    { printf("Word\n"); }
[0-9]+       { printf("Number\n"); }
\n           { return 0; }
.            ;
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