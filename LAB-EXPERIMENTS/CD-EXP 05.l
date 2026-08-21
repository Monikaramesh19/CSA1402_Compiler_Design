#include <stdio.h>

int main()
{
    char ch;
    int spaces = 0;
    int tabs = 0;
    int newlines = 0;

    printf("Enter the text:\n");
    printf("(Press Ctrl+Z and Enter to finish input in Windows)\n\n");

    while ((ch = getchar()) != EOF)
    {
        if (ch == ' ')
        {
            spaces++;
        }
        else if (ch == '\t')
        {
            tabs++;
        }
        else if (ch == '\n')
        {
            newlines++;
        }
    }

    printf("\n----- LEXICAL ANALYZER OUTPUT -----\n");
    printf("Number of spaces     : %d\n", spaces);
    printf("Number of tabs       : %d\n", tabs);
    printf("Number of newlines   : %d\n", newlines);

    return 0;
}
