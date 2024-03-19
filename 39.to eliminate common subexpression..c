#include <stdio.h>

int main() {
    int a = 5;
    int b = 10;
    int c, d, e;

    // Common subexpression: a * b
    c = a * b; // Common subexpression
    d = c + 10;
    e = c + 20;

    printf("Result: %d\n", d + e);

    return 0;
}
