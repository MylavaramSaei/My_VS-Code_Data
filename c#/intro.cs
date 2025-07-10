using System;
class Program {
    static void Main() {
        int a = 5, b = 3;
        Console.WriteLine("Difference = " + (a - b));
    }
}
// Multiplication table not supported for: c#/intro.cs
// Calculator program not supported for: c#/intro.cs

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
