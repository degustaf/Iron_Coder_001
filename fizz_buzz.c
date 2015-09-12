#include <stdio.h>
//#include <stdlib.h>

int main(void)
{
	int i;
  
	for(i=1; i<101; i++)
	{
		switch(i % 15)
		{
			case 0:
				printf("fizzbuzz\n");
				break;

			case 5:
			case 10:
				printf("buzz\n");
				break;

			case 3:
			case 6:
			case 9:
			case 12:
				printf("fizz\n");
				break;

			default:
				printf("%d\n", i);
		}
	}
	return 0;
}
