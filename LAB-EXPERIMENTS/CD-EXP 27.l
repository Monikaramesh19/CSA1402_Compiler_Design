%{
#include <stdio.h>
%}

%%
abc     { printf("ABC"); }
\n      { printf("\n"); }
.       { printf("%s", yytext); }
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
