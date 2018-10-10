#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int **extract_pattern(int (*card)[3])
{
	int i, j, k;

	//pat = (pattern *)malloc(sizeof(pattern) * 3);

	int **arr = (int **)malloc(sizeof(int *) * 3);

	for(i = 0; i < 3; i++)
	{
		arr[i] = (int *)malloc(sizeof(int) * 2);

		for(j = 0; j < 2; j++)
		{
			arr[i][j] = card[j][i];
			printf("%3d", arr[i][j]);
		}

		printf("\n");
	}		

	return arr;
}

int ***make_new_pattern(int **arr)
{
	
}

#if 0
int sort_ascend()
{
	int i, j, key, len = 2;

	for(i = 1; i < len; i++)
	{
		key = card[i];

		for(j = i - 1; card[j] > key; j--)
			card[j + 1] = card[j];

		card[j + 1] = key;
	}

	if(card[0] == card[1])
		
}

void sort_pattern(int (*arr)[3], pattern pat)
{
	int i, j, k;

	for(i = 0; i < 3; i++)
	{
		
	}
}
#endif

int main(void)
{
	int card[2][3] = {{1, 1, 0}, {1, 0, 1}};
	int len = sizeof(card) / (sizeof(int) * 3);
	int sublen = 3;
	int key[3] = {0};
	int subkey;
	int i, j, k;

	printf("len = %d\n", len);
	printf("sublen = %d\n", sublen);

	arr = extract_pattern(card);
	//sort_pattern(card, pat);

#if 0
	for(i = 1; i < len; i++)
	{
		memcpy(key, card[i], 12);
		printf("key[0], key[1], key[2] = %d, %d, %d\n", key[0], key[1], key[2]);
		//for(j = 1; j < sublen;
	}
#endif

	return 0;
}
