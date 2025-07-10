#!/bin/bash

for dir in */ ; do
    case "$dir" in
        *c++*) touch "$dir/intro.cpp" ;;
        *c#*) touch "$dir/intro.cs" ;;
        *c/) touch "$dir/intro.c" ;;
        *java*) touch "$dir/intro.java" ;;
        *dart*) touch "$dir/intro.dart" ;;
        *kotlin*) touch "$dir/intro.kt" ;;
        *python*) touch "$dir/intro.py" ;;
        *perl*) touch "$dir/intro.pl" ;;
        *php*) touch "$dir/intro.php" ;;
        *node*) touch "$dir/intro.js" ;;
        *javascript*) touch "$dir/intro.js" ;;
        *typescript*) touch "$dir/intro.ts" ;;
        *sql*) touch "$dir/intro.sql" ;;
        *racket*) touch "$dir/intro.rkt" ;;
        *ruby*) touch "$dir/intro.rb" ;;
        *swift*) touch "$dir/intro.swift" ;;
        *assembly*) touch "$dir/intro.asm" ;;
        *linux*) touch "$dir/commands.sh" ;;
        *hackathons*) touch "$dir/info.md" ;;
        *) touch "$dir/intro.md" ;;
    esac
done
