#!/bin/bash

for folder in */; do
  for file in "$folder"intro.*; do
    echo "🔧 Appending multiplication code to $file"
    case "$file" in
      *.c)
        cat >> "$file" <<'EOF'

/* --- Multiplication Table (1 to 100) --- */
#include <stdio.h>
int main() {
    for(int i = 1; i <= 100; i++) {
        printf("Table of %d:\n", i);
        for(int j = 1; j <= 10; j++)
            printf("%d x %d = %d\n", i, j, i*j);
        printf("\n");
    }
    return 0;
}
EOF
        ;;
      *.cpp)
        cat >> "$file" <<'EOF'

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
EOF
        ;;
      *.py)
        cat >> "$file" <<'EOF'

# --- Multiplication Table (1 to 100) ---
for i in range(1, 101):
    print(f"Table of {i}:")
    for j in range(1, 11):
        print(f"{i} x {j} = {i * j}")
    print()
EOF
        ;;
      *.java)
        cat >> "$file" <<'EOF'

// --- Multiplication Table (1 to 100) ---
public class Multiply {
    public static void main(String[] args) {
        for(int i = 1; i <= 100; i++) {
            System.out.println("Table of " + i + ":");
            for(int j = 1; j <= 10; j++) {
                System.out.println(i + " x " + j + " = " + (i * j));
            }
            System.out.println();
        }
    }
}
EOF
        ;;
      *.js|*.ts)
        cat >> "$file" <<'EOF'

// --- Multiplication Table (1 to 100) ---
for (let i = 1; i <= 100; i++) {
    console.log(`Table of ${i}:`);
    for (let j = 1; j <= 10; j++) {
        console.log(`${i} x ${j} = ${i * j}`);
    }
    console.log();
}
EOF
        ;;
      *.php)
        cat >> "$file" <<'EOF'

<?php
// --- Multiplication Table (1 to 100) ---
for ($i = 1; $i <= 100; $i++) {
    echo "Table of $i:\n";
    for ($j = 1; $j <= 10; $j++) {
        echo "$i x $j = " . ($i * $j) . "\n";
    }
    echo "\n";
}
?>
EOF
        ;;
      *.rb)
        cat >> "$file" <<'EOF'

# --- Multiplication Table (1 to 100) ---
(1..100).each do |i|
  puts "Table of #{i}:"
  (1..10).each { |j| puts "#{i} x #{j} = #{i * j}" }
  puts
end
EOF
        ;;
      *.kt)
        cat >> "$file" <<'EOF'

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
EOF
        ;;
      *.swift)
        cat >> "$file" <<'EOF'

// --- Multiplication Table (1 to 100) ---
for i in 1...101 {
    print("Table of \\(i):")
    for j in 1...11 {
        print("\\(i) x \\(j) = \\(i * j)")
    }
    print("")
}
EOF
        ;;
      *.pl)
        cat >> "$file" <<'EOF'

# --- Multiplication Table (1 to 100) ---
for my $i (1..100) {
    print "Table of $i:\n";
    for my $j (1..10) {
        print "$i x $j = " . ($i * $j) . "\n";
    }
    print "\n";
}
EOF
        ;;
      *.sh)
        cat >> "$file" <<'EOF'

# --- Multiplication Table (1 to 100) ---
for i in {1..100}; do
  echo "Table of $i:"
  for j in {1..10}; do
    echo "$i x $j = $((i * j))"
  done
  echo
done
EOF
        ;;
      *)
        echo "// Multiplication table not supported for: $file" >> "$file"
        ;;
    esac
    echo "✅ Appended to: $file"
  done
done

echo "🎉 All multiplication tables appended!"
