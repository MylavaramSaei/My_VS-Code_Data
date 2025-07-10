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

/* --- Calculator Program --- */
#include <stdio.h>
int main() {
    char op;
    double a, b;
    printf("Enter operator (+, -, *, /): ");
    scanf(" %c", &op);
    printf("Enter two numbers: ");
    scanf("%lf %lf", &a, &b);
    switch(op) {
        case '+': printf("%.2lf + %.2lf = %.2lf\n", a, b, a + b); break;
        case '-': printf("%.2lf - %.2lf = %.2lf\n", a, b, a - b); break;
        case '*': printf("%.2lf * %.2lf = %.2lf\n", a, b, a * b); break;
        case '/': 
            if(b != 0)
                printf("%.2lf / %.2lf = %.2lf\n", a, b, a / b); 
            else
                printf("Division by zero not allowed.\n"); 
            break;
        default: printf("Invalid operator.\n");
    }
    return 0;
}

# ✅ Lucky Number Finder Program
def is_lucky(num):
    return sum(map(int, str(num))) % 9 == 0

try:
    n = int(input("Enter a number to check if it's lucky: "))
    if is_lucky(n):
        print("🎉 Lucky Number!")
    else:
        print("❌ Not a lucky number.")
except ValueError:
    print("Please enter a valid integer.")
