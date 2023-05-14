#include <stdio.h>

int main(){

	char c = 'a';
	char *p = &c;
	char **pp = &p;
	char ***ppp = &pp;

	int num = 25;
	int *i = &num;
	int **ii = &i;
	int ***iii = &ii;

	return 0;
}
