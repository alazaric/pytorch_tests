#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	if (argc <= 2) {
		printf("Hello World!\n");
		return 0;
	}

	int param1 = atoi(argv[2]);
	int param2 = atoi(argv[4]);

	printf("Hello World!\n");
	printf("With parameters %d %d\n", param1, param2);
	return 0;
}
