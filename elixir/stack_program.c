#include <stdio.h>
#define SIZE 5
int stack[SIZE], top = -1;
void push(int x){ if(top<SIZE-1) stack[++top]=x; else printf("Overflow\\n"); }
void pop(){ if(top>=0) printf("Popped %d\\n", stack[top--]); else printf("Underflow\\n"); }
void peek(){ if(top>=0) printf("Top %d\\n", stack[top]); else printf("Empty\\n"); }
void display(){ for(int i=0;i<=top;i++) printf("%d ", stack[i]); printf("\\n"); }
int main(){
  push(10); push(20); push(30); display(); peek(); pop(); display(); return 0;
}
