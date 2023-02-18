#include <stdio.h>

void func1();
int func2(int a, int b);

int main() {

	func1();

	int a = 3;
	int b = 2;
	int c = func2(a, b);

	return 0;
}

void func1(){
	int tmp = 5 - 1;
}

int func2(int a, int b){
	return a + b;
}
