class Stack:
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
s.display()
