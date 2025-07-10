#include <iostream>
using namespace std;
int main() {
    int n, sum = 0;
    cin >> n;
    while(n) { sum += n % 10; n /= 10; }
    cout << ((sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.") << endl;
    return 0;
}
