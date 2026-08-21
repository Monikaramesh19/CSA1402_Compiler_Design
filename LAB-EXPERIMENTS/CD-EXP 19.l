%{
#include <stdio.h>

int characters = 0;
int words = 0;
int lines = 0;
int in_word = 0;
%}

%x COMMENT

%%

"//".*                  ;

"/*"                    {
                            BEGIN(COMMENT);
                        }

<COMMENT>"*/"           {
                            BEGIN(INITIAL);
                        }

<COMMENT>\n             {
                            lines++;
                        }

<COMMENT>.              ;

\n                      {
                            lines++;
                            in_word = 0;
                        }

[ \t]+                  {
                            in_word = 0;
                        }

[a-zA-Z0-9_]+           {
                            characters += yyleng;

                            if (!in_word)
                            {
                                words++;
                                in_word = 1;
                            }
                        }

.                       {
                            characters++;
                            in_word = 1;
                        }

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("\n----- RESULT -----\n");
    printf("Number of characters : %d\n", characters);
    printf("Number of lines      : %d\n", lines);
    printf("Number of words      : %d\n", words);

    return 0;
}
