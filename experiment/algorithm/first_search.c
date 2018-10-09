#include <stdio.h>
#include <stdlib.h>

int grid[6][6] =	{
						{0, 0, 1, 0, 0, 0},
						{0, 0, 1, 0, 0, 0},
						{0, 0, 1, 0, 0, 0},
						{0, 0, 0, 0, 1, 0},
						{0, 0, 1, 1, 1, 0},
						{0, 0, 0, 0, 1, 0}
					};

int init[3] = {0, 0};
int goal[3] = {5, 5};
int cost = 1;

int open[8][3] =	{
						{0, init[0], init[1]},
					};

int delta[4][2] = 	{
						{-1,  0},
						{ 0, -1},
						{ 1,  0},
						{ 0,  1}
					};

char name[4] = {'^', '<', 'v', '>'};

void print_arr(int **arr, int x, int y)
{
	int i, j;

	printf("arr = \n");

	for(i = 0; i < x; i++)
	{
		for(j = 0; j < y; j++)
			printf("%3d", arr[i][j]);

		printf("\n");
	}

}

int **get_array(int x, int y)
{
	int i;
	int **tmp = (int **)malloc(sizeof(int *) * y);

	for(i = 0; i < y; i++)
		tmp[i] = (int *)malloc(sizeof(int) * x);

	return tmp;
}

void find_path(void)
{
	int found = 0, resign = 0;

	int x = init[0];
	int y = init[1];
	int g = 0;

	int **closed = get_array(6, 6);
	closed[init[0]][init[1]] = 1;

	while(!found && !resign)
	{
		/*
			sort();
			reverse();
			pop();
		*/
	}

	print_arr(closed, 6, 6);
}

int main(void)
{
	find_path();
	return 0;
}
