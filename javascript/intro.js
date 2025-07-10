let a = 5, b = 3; console.log("Difference =", a - b);

// --- Multiplication Table (1 to 100) ---
for (let i = 1; i <= 100; i++) {
    console.log(`Table of ${i}:`);
    for (let j = 1; j <= 10; j++) {
        console.log(`${i} x ${j} = ${i * j}`);
    }
    console.log();
}

// --- Calculator Program ---
const readline = require('readline').createInterface({
  input: process.stdin, output: process.stdout
});
readline.question('Enter operator (+, -, *, /): ', op => {
  readline.question('Enter two numbers: ', input => {
    const [a, b] = input.split(' ').map(Number);
    switch(op) {
      case '+': console.log(a + b); break;
      case '-': console.log(a - b); break;
      case '*': console.log(a * b); break;
      case '/': b !== 0 ? console.log(a / b) : console.log("Divide by zero error"); break;
      default: console.log("Invalid operator");
    }
    readline.close();
  });
});

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
