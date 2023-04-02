#include <stdio.h>
#include <stdlib.h>

typedef struct student student;
struct student {
	char id;
	short n;
	char *name;
} Std,Std1;

int main() {
	student *std = (student *)malloc(sizeof(student));

	std -> name = "reten";

	std -> id = 10;

	std -> n = 100;

	Std.id = 30;

	return 0;
}
		

	
