#include <stdio.h>
#include <stdlib.h>

typedef struct student student;
struct student {
	char id;
	short age;
	char *name;
} Student1,Student2;

int main() {
	student *s = (student *)malloc(sizeof(student));

	s -> name = "reten";

	s -> id = 10;

	s -> age = 21;

	Student1.id = 11;

	return 0;
}
		

	
