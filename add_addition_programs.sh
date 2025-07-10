#!/bin/bash

for folder in */; do
  for file in "$folder"intro.*; do
    case "$file" in
      *.c)
        cat > "$file" <<EOF
#include <stdio.h>
int main() {
    int a = 5, b = 3;
    printf("Sum = %d\\n", a + b);
    return 0;
}
EOF
        ;;
      *.cpp)
        cat > "$file" <<EOF
#include <iostream>
int main() {
    int a = 5, b = 3;
    std::cout << "Sum = " << a + b << std::endl;
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
        Console.WriteLine("Sum = " + (a + b));
    }
}
EOF
        ;;
      *.py)
        echo "a, b = 5, 3\nprint('Sum =', a + b)" > "$file"
        ;;
      *.java)
        cat > "$file" <<EOF
public class Hello {
    public static void main(String[] args) {
        int a = 5, b = 3;
        System.out.println("Sum = " + (a + b));
    }
}
EOF
        ;;
      *.js|*.ts)
        echo 'let a = 5, b = 3; console.log("Sum =", a + b);' > "$file"
        ;;
      *.php)
        echo '<?php $a = 5; $b = 3; echo "Sum = " . ($a + $b); ?>' > "$file"
        ;;
      *.go)
        cat > "$file" <<EOF
package main
import "fmt"
func main() {
    a, b := 5, 3
    fmt.Println("Sum =", a + b)
}
EOF
        ;;
      *.kt)
        echo 'fun main() { val a = 5; val b = 3; println("Sum = ${a + b}") }' > "$file"
        ;;
      *.dart)
        echo 'void main() { int a = 5, b = 3; print("Sum = ${a + b}"); }' > "$file"
        ;;
      *.rb)
        echo 'a, b = 5, 3; puts "Sum = #{a + b}"' > "$file"
        ;;
      *.pl)
        echo 'my ($a, $b) = (5, 3); print "Sum = ", $a + $b, "\n";' > "$file"
        ;;
      *.swift)
        echo 'let a = 5, b = 3; print("Sum = \\(a + b)")' > "$file"
        ;;
      *.scala)
        echo 'object Main extends App { val a = 5; val b = 3; println(s"Sum = ${a + b}") }' > "$file"
        ;;
      *.ex)
        echo 'a = 5; b = 3; IO.puts("Sum = #{a + b}")' > "$file"
        ;;
      *.erl)
        echo '-module(main). -export([start/0]). start() -> io:format("Sum = ~p~n", [5+3]).' > "$file"
        ;;
      *.sh)
        echo 'a=5; b=3; echo "Sum = $((a + b))"' > "$file"
        ;;
      *.asm)
        echo "; Addition placeholder in assembly" > "$file"
        ;;
      *.html|*.css)
        echo "<!-- Addition is not applicable in HTML/CSS -->" > "$file"
        ;;
      *)
        echo "// Generic placeholder for addition" > "$file"
        ;;
    esac
    echo "✅ Updated: $file"
  done
done

echo "🎉 All addition programs written!"
