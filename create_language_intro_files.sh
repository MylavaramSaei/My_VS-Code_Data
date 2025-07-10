#!/bin/bash

declare -A languages=(
  ["c"]="intro.c"
  ["c++"]="intro.cpp"
  ["c#"]="intro.cs"
  ["python"]="intro.py"
  ["java"]="Hello.java"
  ["javascript"]="intro.js"
  ["kotlin"]="main.kt"
  ["php"]="intro.php"
  ["perl"]="intro.pl"
  ["go"]="main.go"
  ["dart"]="main.dart"
  ["html"]="index.html"
  ["css"]="style.css"
  ["assembly(x86,ARM)"]="intro.asm"
  ["typescript"]="app.ts"
  ["racket"]="intro.rkt"
  ["ruby"]="intro.rb"
  ["scala"]="intro.scala"
  ["swift"]="main.swift"
  ["elixir"]="main.ex"
  ["erlang"]="main.erl"
  ["bash"]="intro.sh"
  ["node"]="index.js"
)

for folder in "${!languages[@]}"; do
  if [ -d "$folder" ]; then
    file="$folder/${languages[$folder]}"
    if [ ! -f "$file" ]; then
      echo "📝 Creating: $file"
      case "${languages[$folder]}" in
        *.c)         echo '#include <stdio.h>' > "$file" ;;
        *.cpp)       echo '#include <iostream>' > "$file" ;;
        *.cs)        echo 'class Hello { static void Main() {} }' > "$file" ;;
        *.py)        echo 'print("Hello from Python")' > "$file" ;;
        *.java)      echo 'public class Hello { public static void main(String[] args) {} }' > "$file" ;;
        *.js)        echo 'console.log("Hello JS");' > "$file" ;;
        *.ts)        echo 'console.log("Hello TS");' > "$file" ;;
        *.kt)        echo 'fun main() { println("Hi") }' > "$file" ;;
        *.php)       echo '<?php echo "Hello PHP"; ?>' > "$file" ;;
        *.pl)        echo 'print "Hello Perl\n";' > "$file" ;;
        *.go)        echo 'package main; func main() {}' > "$file" ;;
        *.dart)      echo 'void main() { print("Dart"); }' > "$file" ;;
        *.html)      echo '<!DOCTYPE html><html><body>Hello HTML</body></html>' > "$file" ;;
        *.css)       echo 'body { font-family: sans-serif; }' > "$file" ;;
        *.asm)       echo '; assembly code placeholder' > "$file" ;;
        *.rkt)       echo '#lang racket' > "$file" ;;
        *.rb)        echo 'puts "Hello Ruby"' > "$file" ;;
        *.scala)     echo 'object Hello extends App {}' > "$file" ;;
        *.swift)     echo 'print("Hello Swift")' > "$file" ;;
        *.ex)        echo 'IO.puts "Hello Elixir"' > "$file" ;;
        *.erl)       echo '-module(main). -export([start/0]). start() -> ok.' > "$file" ;;
        *.sh)        echo '#!/bin/bash' > "$file" ;;
        *)           echo "// File for language: ${languages[$folder]}" > "$file" ;;
      esac
    fi
  else
    echo "⚠ Folder not found: $folder"
  fi
done

echo "✅ All language intro files created."
