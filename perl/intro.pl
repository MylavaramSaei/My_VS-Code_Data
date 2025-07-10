my ($a, $b) = (5, 3); print "Difference = ", $a - $b, "\n";

# --- Multiplication Table (1 to 100) ---
for my $i (1..100) {
    print "Table of $i:\n";
    for my $j (1..10) {
        print "$i x $j = " . ($i * $j) . "\n";
    }
    print "\n";
}
// Calculator program not supported for: perl/intro.pl

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
