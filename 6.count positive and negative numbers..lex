%{
#include <stdio.h>
%}

%%
-?[0-9]+        { 
                    int num = atoi(yytext); // Convert matched text to integer
                    if (num > 0) {
                        printf("Positive number: %s\n", yytext);
                    } else if (num < 0) {
                        printf("Negative number: %s\n", yytext);
                    }
                }
.               ; // Ignore other characters
%%

int yywrap() {
    return 1; // Indicate end of input
}

int main() {
    yylex(); // Begin lexical analysis
    return 0;
}
