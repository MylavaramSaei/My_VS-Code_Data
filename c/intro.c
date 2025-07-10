#include <stdio.h>
int main() {
    int a = 5, b = 3;
    printf("Difference = %d\n", a - b);
    return 0;
}

/* --- Multiplication Table (1 to 100) --- */
#include <stdio.h>
int main() {
    for(int i = 1; i <= 100; i++) {
        printf("Table of %d:\n", i);
        for(int j = 1; j <= 10; j++)
            printf("%d x %d = %d\n", i, j, i*j);
        printf("\n");
    }
    return 0;
}
