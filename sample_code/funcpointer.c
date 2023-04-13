#include <stdio.h>

int func(int n){
	return n + 10;
}

int main(){
	int (*f)(int);
	f = func;
	int r = f(5);
	return r;
}	
