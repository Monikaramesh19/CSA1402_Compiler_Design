#include <stdio.h>
#include <string.h>
#include <ctype.h>

int isKeyword(char str[])
{
    char keywords[][10] = {
        "auto", "break", "case", "char",
        "const", "continue", "default", "do",
        "double", "else", "enum", "extern",
        "float", "for", "goto", "if",
        "int", "long", "register", "return",
        "short", "signed", "sizeof", "static",
        "struct", "switch", "typedef", "union",
        "unsigned", "void", "volatile", "while"
    };

    int n = sizeof(keywords) / sizeof(keywords[0]);

    for (int i = 0; i < n; i++)
    {
        if (strcmp(str, keywords[i]) == 0)
        {
            return 1;
        }
    }

    return 0;
}

int main()
{
    char identifier[100];
    int i;
    int valid = 1;

    printf("Enter an identifier: ");
    scanf("%s", identifier);

    // Check first character
    if (!(isalpha(identifier[0]) || identifier[0] == '_'))
    {
        valid = 0;
    }

    // Check remaining characters
    for (i = 1; identifier[i] != '\0'; i++)
    {
        if (!(isalnum(identifier[i]) || identifier[i] == '_'))
        {
            valid = 0;
            break;
        }
    }

    // Check whether it is a keyword
    if (isKeyword(identifier))
    {
        valid = 0;
    }

    printf("\n----- LEXICAL ANALYZER OUTPUT -----\n");

    if (valid)
    {
        printf("%s : Valid Identifier\n", identifier);
    }
    else
    {
        printf("%s : Invalid Identifier\n", identifier);
    }

    return 0;
}
