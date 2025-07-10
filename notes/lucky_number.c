#include <stdio.h>
int main() {
    int n, sum = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    while(n) { sum += n % 10; n /= 10; }
    printf("%s\\n", (sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.");
    return 0;
}
