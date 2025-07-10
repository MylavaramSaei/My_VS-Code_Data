#include <iostream>
int main() {
    int a = 5, b = 3;
    std::cout << "Difference = " << a - b << std::endl;
    return 0;
}

// --- Multiplication Table (1 to 100) ---
#include <iostream>
using namespace std;
int main() {
    for(int i = 1; i <= 100; i++) {
        cout << "Table of " << i << ":\n";
        for(int j = 1; j <= 10; j++)
            cout << i << " x " << j << " = " << i*j << endl;
        cout << endl;
    }
    return 0;
}

// --- Calculator Program ---
#include <iostream>
using namespace std;
int main() {
    char op;
    double a, b;
    cout << "Enter operator (+, -, *, /): ";
    cin >> op;
    cout << "Enter two numbers: ";
    cin >> a >> b;
    switch(op) {
        case '+': cout << a + b; break;
        case '-': cout << a - b; break;
        case '*': cout << a * b; break;
        case '/': 
            if (b != 0)
                cout << a / b;
            else
                cout << "Cannot divide by zero.";
            break;
        default: cout << "Invalid operator.";
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
