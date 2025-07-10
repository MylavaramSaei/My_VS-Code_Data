#!/bin/bash

cd ~/Mylavaram_Prgms || { echo "❌ Directory not found!"; exit 1; }

folders=(
  "android"
  "assembly(x86,ARM)"
  "c"
  "c#"
  "c++"
  "coding challanges"
  "css"
  "dart"
  "dsa"
  "elixir"
  "erlang"
  "go"
  "hackathons"
  "HackerRank_Journey"
  "hacking"
  "html"
  "ios"
  "java"
  "java(spring boot)"
  "javascript"
  "kotlin"
  "leet code"
  "leetcode questions"
  "linux"
  "node"
  "notes"
  "perl"
  "php"
  "projects"
)

for folder in "${folders[@]}"; do
  if [ -d "$folder" ]; then
    echo "📁 Processing $folder..."
    git add "$folder"
    git commit -m "Add $folder folder to My_VS-Code_Data repo" || echo "⚠️ Nothing to commit in $folder"
    git push origin main || { echo "❌ Push failed for $folder — stopping."; exit 1; }
    echo "✅ Pushed $folder"
  else
    echo "⛔ Skipping $folder — not found"
  fi
done

echo "🎉 All folders processed!"
