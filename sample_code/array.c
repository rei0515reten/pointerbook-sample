#include <stdio.h>

int main() {

	int array1[5] = {10, 11, 12, 13, 14};
	int array2[2][3] = {{1, 2, 3},{4, 5, 6}};

	array1[0] = 20;
	array2[0][0] = 100;
	array2[0][1] = 200;
	array2[1][0] = 300;
	array2[1][1] = 400;

	return 0;
}
