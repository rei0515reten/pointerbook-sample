#include <stdio.h>

int main(){

	char str = 'a';
	char *p = &str;
	char **pp = &p;
	char ***ppp = &pp;

	int num = 25;
	int *i = &num;
	int **ii = &i;
	int ***iii = &ii;


	return 0;
}
