#include <iostream>
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
}
