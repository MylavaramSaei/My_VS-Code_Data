void main() { int a = 5, b = 3; print("Difference = ${a - b}"); }
// Multiplication table not supported for: dart/intro.dart
// Calculator program not supported for: dart/intro.dart

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
