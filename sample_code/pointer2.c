#include <stdio.h>
#include <stdlib.h>

typedef struct student student;
struct student {
	char id;
	short age;
	char *name;
} Stud,Stud1;

int main() {
	student *stud = (student *)malloc(sizeof(student));

	stud -> name = "reten";

	stud -> id = 10;

	stud -> age = 21;

	Stud.id = 11;

	return 0;
}
		

	
