#include <stdio.h>
#include <stdlib.h>

typedef struct student student;
struct student {
	char *name;
	size_t id;
} Std;

int main() {
	student *std = (student *)malloc(sizeof(student));

	std -> name = "reten";

	std -> id = 10;

	Std.id = 20;

	return 0;
}
		

	
