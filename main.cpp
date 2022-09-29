#include <iostream>
#include "libresvg.h"

using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    hello();
    for (int i = 0; i < 10; ++i) {
        cout << mul(i) << endl;
    }
    return 0;
}
