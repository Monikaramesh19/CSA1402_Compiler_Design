%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Number\n"); }
.           { printf("Other\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}