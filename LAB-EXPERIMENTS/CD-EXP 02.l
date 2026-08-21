#include <stdio.h>
#include <string.h>

int main()
{
    char line[500];

    printf("Enter a line: ");
    fgets(line, sizeof(line), stdin);

    // Check for single-line comment
    if (line[0] == '/' && line[1] == '/')
    {
        printf("It is a COMMENT.\n");
        printf("Type: Single-line comment (//)\n");
    }

    // Check for multi-line comment starting and ending in same line
    else if (line[0] == '/' && line[1] == '*')
    {
        char *end = strstr(line + 2, "*/");

        if (end != NULL)
        {
            printf("It is a COMMENT.\n");
            printf("Type: Multi-line comment (/* */)\n");
        }
        else
        {
            printf("It is the START of a multi-line comment.\n");
            printf("Type: Multi-line comment (/* ... */)\n");
        }
    }

    // Check if line is inside a multi-line comment
    else if (strstr(line, "*/") != NULL)
    {
        printf("It is the END of a COMMENT.\n");
        printf("Type: Multi-line comment (/* ... */)\n");
    }

    else
    {
        printf("It is NOT a COMMENT.\n");
    }

    return 0;
}
