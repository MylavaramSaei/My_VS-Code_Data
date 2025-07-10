#include <iostream>
using namespace std;

int main() {
    // Declare variables
    int num1, num2, sum;

    // Get input from the user
    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter second number: ";
    cin >> num2;

    // Calculate sum
    sum = num1 + num2;

    // Display result
    cout << "Sum = " << sum << endl;

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
