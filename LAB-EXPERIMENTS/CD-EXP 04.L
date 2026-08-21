#include <stdio.h>
#include <ctype.h>

int main()
{
    char input[100];
    int i = 0;

    printf("Enter an expression: ");
    fgets(input, sizeof(input), stdin);

    printf("\n----- LEXICAL ANALYZER OUTPUT -----\n");

    while (input[i] != '\0')
    {
        // Check for arithmetic operators
        if (input[i] == '+')
        {
            printf("%c : Valid Arithmetic Operator\n", input[i]);
        }
        else if (input[i] == '-')
        {
            printf("%c : Valid Arithmetic Operator\n", input[i]);
        }
        else if (input[i] == '*')
        {
            printf("%c : Valid Arithmetic Operator\n", input[i]);
        }
        else if (input[i] == '/')
        {
            printf("%c : Valid Arithmetic Operator\n", input[i]);
        }

        // Ignore spaces, digits and identifiers
        else if (isspace(input[i]) ||
                 isdigit(input[i]) ||
                 isalpha(input[i]))
        {
            // Ignore
        }

        // Invalid operator/symbol
        else
        {
            printf("%c : Invalid Operator\n", input[i]);
        }

        i++;
    }

    printf("\n----- END OF ANALYSIS -----\n");

    return 0;
}
