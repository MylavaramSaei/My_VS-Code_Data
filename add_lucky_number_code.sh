#!/bin/bash

echo "📁 Adding lucky number program to each folder..."

declare -A code

# Sample lucky number programs
code["py"]='''def is_lucky(num):
    return sum(map(int, str(num))) % 9 == 0

n = int(input("Enter a number: "))
print("🎉 Lucky!" if is_lucky(n) else "❌ Not lucky.")'''

code["c"]='''#include <stdio.h>
int main() {
    int n, sum = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    while(n) { sum += n % 10; n /= 10; }
    printf("%s\\n", (sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.");
    return 0;
}'''

code["cpp"]='''#include <iostream>
using namespace std;
int main() {
    int n, sum = 0;
    cin >> n;
    while(n) { sum += n % 10; n /= 10; }
    cout << ((sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.") << endl;
    return 0;
}'''

code["js"]='''let n = prompt("Enter number:");
let sum = [...n].reduce((a, b) => a + +b, 0);
alert(sum % 9 === 0 ? "🎉 Lucky!" : "❌ Not lucky.");'''

code["java"]='''import java.util.Scanner;
public class LuckyNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), sum = 0;
        while(n != 0) { sum += n % 10; n /= 10; }
        System.out.println((sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.");
    }
}'''

for dir in */; do
  for ext in "${!code[@]}"; do
    file="${dir}lucky_number.${ext}"
    if [ ! -f "$file" ]; then
      echo "➕ Adding $file"
      echo "${code[$ext]}" > "$file"
    fi
  done
done

echo "✅ Done!"
