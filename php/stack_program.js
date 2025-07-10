class Stack {
  constructor(){ this.items = []; }
  push(x){ this.items.push(x); }
  pop(){ return this.items.length ? this.items.pop() : "Underflow"; }
  peek(){ return this.items.length ? this.items[this.items.length - 1] : "Empty"; }
  display(){ console.log(this.items); }
}
let s = new Stack();
s.push(10); s.push(20); s.push(30);
s.display(); console.log("Top:", s.peek());
console.log("Popped:", s.pop()); s.display();
