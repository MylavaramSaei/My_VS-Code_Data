#!/bin/bash

for folder in */; do
  for file in "$folder"intro.*; do
    case "$file" in
      *.c)
        cat > "$file" <<EOF
#include <stdio.h>
int main() {
    int a = 5, b = 3;
    printf("Difference = %d\\n", a - b);
    return 0;
}
EOF
        ;;
      *.cpp)
        cat > "$file" <<EOF
#include <iostream>
int main() {
    int a = 5, b = 3;
    std::cout << "Difference = " << a - b << std::endl;
    return 0;
}
EOF
        ;;
      *.cs)
        cat > "$file" <<EOF
using System;
class Program {
    static void Main() {
        int a = 5, b = 3;
        Console.WriteLine("Difference = " + (a - b));
    }
}
EOF
        ;;
      *.py)
        echo -e "a, b = 5, 3\nprint('Difference =', a - b)" > "$file"
        ;;
      *.java)
        cat > "$file" <<EOF
public class Hello {
    public static void main(String[] args) {
        int a = 5, b = 3;
        System.out.println("Difference = " + (a - b));
    }
}
EOF
        ;;
      *.js|*.ts)
        echo 'let a = 5, b = 3; console.log("Difference =", a - b);' > "$file"
        ;;
      *.php)
        echo '<?php $a = 5; $b = 3; echo "Difference = " . ($a - $b); ?>' > "$file"
        ;;
      *.go)
        cat > "$file" <<EOF
package main
import "fmt"
func main() {
    a, b := 5, 3
    fmt.Println("Difference =", a - b)
}
EOF
        ;;
      *.kt)
        echo 'fun main() { val a = 5; val b = 3; println("Difference = ${a - b}") }' > "$file"
        ;;
      *.dart)
        echo 'void main() { int a = 5, b = 3; print("Difference = ${a - b}"); }' > "$file"
        ;;
      *.rb)
        echo 'a, b = 5, 3; puts "Difference = #{a - b}"' > "$file"
        ;;
      *.pl)
        echo 'my ($a, $b) = (5, 3); print "Difference = ", $a - $b, "\n";' > "$file"
        ;;
      *.swift)
        echo 'let a = 5, b = 3; print("Difference = \\(a - b)")' > "$file"
        ;;
      *.scala)
        echo 'object Main extends App { val a = 5; val b = 3; println(s"Difference = ${a - b}") }' > "$file"
        ;;
      *.ex)
        echo 'a = 5; b = 3; IO.puts("Difference = #{a - b}")' > "$file"
        ;;
      *.erl)
        echo '-module(main). -export([start/0]). start() -> io:format("Difference = ~p~n", [5-3]).' > "$file"
        ;;
      *.sh)
        echo 'a=5; b=3; echo "Difference = $((a - b))"' > "$file"
        ;;
      *.asm)
        echo "; Subtraction placeholder in assembly" > "$file"
        ;;
      *.html|*.css)
        echo "<!-- Subtraction is not applicable in HTML/CSS -->" > "$file"
        ;;
      *)
        echo "// Generic placeholder for subtraction" > "$file"
        ;;
    esac
    echo "✅ Updated: $file"
  done
done

echo "🎉 All subtraction programs written!"

