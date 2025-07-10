fun main() { val a = 5; val b = 3; println("Difference = ${a - b}") }

// --- Multiplication Table (1 to 100) ---
fun main() {
    for (i in 1..100) {
        println("Table of $i:")
        for (j in 1..10) {
            println("$i x $j = ${i * j}")
        }
        println()
    }
}
// Calculator program not supported for: kotlin/intro.kt

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
