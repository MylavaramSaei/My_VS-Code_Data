#!/bin/bash

echo "📁 Adding Stack programs to each coding folder..."

declare -A stack_code

# ▶ Stack Program Templates in Various Languages

stack_code["py"]='''class Stack:
    def __init__(self): self.items = []
    def push(self, item): self.items.append(item)
    def pop(self): return self.items.pop() if self.items else "Underflow"
    def peek(self): return self.items[-1] if self.items else "Empty"
    def display(self): print(self.items)

s = Stack()
s.push(10); s.push(20); s.push(30)
s.display()
print("Top:", s.peek())
print("Popped:", s.pop())
s.display()'''

stack_code["c"]='''#include <stdio.h>
#define SIZE 5
int stack[SIZE], top = -1;
void push(int x){ if(top<SIZE-1) stack[++top]=x; else printf("Overflow\\n"); }
void pop(){ if(top>=0) printf("Popped %d\\n", stack[top--]); else printf("Underflow\\n"); }
void peek(){ if(top>=0) printf("Top %d\\n", stack[top]); else printf("Empty\\n"); }
void display(){ for(int i=0;i<=top;i++) printf("%d ", stack[i]); printf("\\n"); }
int main(){
  push(10); push(20); push(30); display(); peek(); pop(); display(); return 0;
}'''

stack_code["cpp"]='''#include <iostream>
#include <vector>
using namespace std;
class Stack {
    vector<int> v;
public:
    void push(int x){ v.push_back(x); }
    void pop(){ if(!v.empty()) v.pop_back(); }
    int peek(){ return v.empty() ? -1 : v.back(); }
    void display(){ for(int i : v) cout << i << " "; cout << endl; }
};
int main(){
  Stack s; s.push(10); s.push(20); s.push(30);
  s.display(); cout << "Top: " << s.peek() << endl;
  s.pop(); s.display(); return 0;
}'''

stack_code["js"]='''class Stack {
  constructor(){ this.items = []; }
  push(x){ this.items.push(x); }
  pop(){ return this.items.length ? this.items.pop() : "Underflow"; }
  peek(){ return this.items.length ? this.items[this.items.length - 1] : "Empty"; }
  display(){ console.log(this.items); }
}
let s = new Stack();
s.push(10); s.push(20); s.push(30);
s.display(); console.log("Top:", s.peek());
console.log("Popped:", s.pop()); s.display();'''

stack_code["java"]='''import java.util.*;
class StackOps {
  public static void main(String[] args) {
    Stack<Integer> s = new Stack<>();
    s.push(10); s.push(20); s.push(30);
    System.out.println(s); System.out.println("Top: " + s.peek());
    System.out.println("Popped: " + s.pop()); System.out.println(s);
  }
}'''

# 🔁 Iterate through all folders and add the file
for dir in */; do
  for ext in "${!stack_code[@]}"; do
    file="${dir}stack_program.${ext}"
    if [ ! -f "$file" ]; then
      echo "➕ Adding $file"
      echo "${stack_code[$ext]}" > "$file"
    fi
  done
done

echo "✅ Stack programs added successfully!"
