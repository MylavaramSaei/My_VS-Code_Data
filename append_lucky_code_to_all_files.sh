#!/bin/bash

echo "📁 Appending lucky number code to all code files..."

# Common code file extensions
extensions=("*.py" "*.c" "*.cpp" "*.java" "*.js" "*.ts" "*.rb" "*.php" "*.swift" "*.kt" "*.rs" "*.go" "*.cs" "*.pl" "*.scala")

# Loop through all folders and append code to matching files
for folder in */; do
  for ext in "${extensions[@]}"; do
    for file in "$folder"/$ext; do
      [ -e "$file" ] || continue
      echo "📝 Appending to: $file"

      cat <<'EOF' >> "$file"

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
EOF

    done
  done
done

echo "✅ Done appending lucky number code to all code files!"
