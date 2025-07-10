#!/bin/bash

echo "🚀 Appending calculator programs to all intro.* files..."

for folder in */; do
  for file in "$folder"intro.*; do
    echo "🔧 Processing $file ..."
    case "$file" in
      *.c)
        cat >> "$file" <<'EOF'

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
EOF
        ;;
      *.cpp)
        cat >> "$file" <<'EOF'

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
EOF
        ;;
      *.py)
        cat >> "$file" <<'EOF'

# --- Calculator Program ---
op = input("Enter operator (+, -, *, /): ")
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
if op == '+':
    print(a + b)
elif op == '-':
    print(a - b)
elif op == '*':
    print(a * b)
elif op == '/':
    print(a / b if b != 0 else "Cannot divide by zero")
else:
    print("Invalid operator")
EOF
        ;;
      *.java)
        cat >> "$file" <<'EOF'

// --- Calculator Program ---
import java.util.Scanner;
public class Calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter operator (+, -, *, /): ");
        char op = sc.next().charAt(0);
        System.out.print("Enter two numbers: ");
        double a = sc.nextDouble(), b = sc.nextDouble();
        switch(op) {
            case '+': System.out.println(a + b); break;
            case '-': System.out.println(a - b); break;
            case '*': System.out.println(a * b); break;
            case '/': System.out.println(b != 0 ? a / b : "Cannot divide by zero"); break;
            default: System.out.println("Invalid operator");
        }
    }
}
EOF
        ;;
      *.js|*.ts)
        cat >> "$file" <<'EOF'

// --- Calculator Program ---
const readline = require('readline').createInterface({
  input: process.stdin, output: process.stdout
});
readline.question('Enter operator (+, -, *, /): ', op => {
  readline.question('Enter two numbers: ', input => {
    const [a, b] = input.split(' ').map(Number);
    switch(op) {
      case '+': console.log(a + b); break;
      case '-': console.log(a - b); break;
      case '*': console.log(a * b); break;
      case '/': b !== 0 ? console.log(a / b) : console.log("Divide by zero error"); break;
      default: console.log("Invalid operator");
    }
    readline.close();
  });
});
EOF
        ;;
      *.sh)
        cat >> "$file" <<'EOF'

# --- Calculator Program ---
read -p "Enter operator (+, -, *, /): " op
read -p "Enter first number: " a
read -p "Enter second number: " b
case $op in
  +) echo "$a + $b = $((a + b))";;
  -) echo "$a - $b = $((a - b))";;
  \*) echo "$a * $b = $((a * b))";;
  /) if [ "$b" -ne 0 ]; then echo "$a / $b = $((a / b))"; else echo "Cannot divide by zero"; fi;;
  *) echo "Invalid operator";;
esac
EOF
        ;;
      *) 
        echo "// Calculator program not supported for: $file" >> "$file"
        ;;
    esac
    echo "✅ Appended to: $file"
  done
done

echo "🎉 All calculator programs appended!"
