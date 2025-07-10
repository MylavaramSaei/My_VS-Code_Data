#!/bin/bash

echo "📁 Appending lucky number finder to all intro.* files..."

for folder in */; do
    intro_file=$(find "$folder" -maxdepth 1 -type f -name "intro.*" | head -n 1)

    if [ -n "$intro_file" ]; then
        echo "✍️ Appending lucky number code to $intro_file"

        cat <<'EOF' >> "$intro_file"

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
EOF
    fi
done

echo "✅ Lucky number logic added to all intro.* files."

