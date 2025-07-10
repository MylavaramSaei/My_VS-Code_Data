public class Hello { public static void main(String[] args) {} }

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
