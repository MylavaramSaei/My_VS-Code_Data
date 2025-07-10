#include <stdio.h>

int main() {
    // Declare variables to store the two numbers
    float num1, num2, sum;

    // Prompt the user for input
    printf("Enter the first number: ");
    scanf("%f", &num1);

    printf("Enter the second number: ");
    scanf("%f", &num2);

    // Calculate the sum
    sum = num1 + num2;

    // Display the result
    printf("The sum of %.2f and %.2f is %.2f\n", num1, num2, sum);

    return 0;
}

# ✅ Lucky Number Finder
def is_lucky(num):
    return sum(map(int, str(num))) % 9 == 0

try:
    n = int(input("Enter a number to check if it's lucky: "))
    if is_lucky(n):
        print("🎉 Lucky Number!")
    else:
        print("❌ Not a lucky number.")
except:
    print("Invalid input.")
