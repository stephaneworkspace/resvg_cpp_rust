//
// Created by Stéphane on 29.09.22.
//
#include <iostream>
#include "../include/helloworld.h"

using namespace std;

int main() {
    cout << ":-)" << endl;
    HelloWorld::helloWorld();
    for (int i = 0; i < 10; ++i) {
        cout << HelloWorld::mult(i) << endl;
    }
    return 0;
}