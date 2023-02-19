#include <stdio.h>
#include <stdlib.h>

typedef struct student student;
struct student {
	char *name;
	size_t id;
};

int main() {
	student *std = (student *)malloc(sizeof(student));

	std -> name = "reten";

	std -> id = 10;

	return 0;
}
		

	
