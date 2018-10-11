#include <math.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct _arr_manage
{
	int x;
	int y;
	int **arr;
} arr_manage;

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

#if 0
int open[8][3] =	{
						{0, init[0], init[1]},
					};
#endif

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

void transform_format(int *res, int (*arr)[3])
{
    int i, j;

    for(i = 0; i < 3; i++)
        for(j = 0; j < 3; j++)
            res[i] += arr[i][j] * pow(10, 2 - j); 
}

void sort_descend(int *arr)
{
    int i, j, key, len = 3;

    for(i = len - 1; i > 0; i--)
    {
        key = arr[i - 1];

        for(j = i; arr[j] > key; j++)
            arr[j - 1] = arr[j];

        arr[j - 1] = key;
    }
}

void inverse_transform(int *arr, int (*res)[3])
{
    int i, j;

    for(i = 0; i < 3; i++)
        for(j = 0; j < 3; j++)
            res[i][j] = (int)(arr[i] / pow(10, 2 - j)) % 10;
}

void get_arr_manage(int x, int y, arr_manage **am)
{
	int i;

	(*am) = (arr_manage *)malloc(sizeof(arr_manage));
	(*am)->x = x;
	(*am)->y = y;

	(*am)->arr = (int **)malloc(sizeof(int *) * y);

	for(i = 0; i < y; i++)
		(*am)->arr[i] = (int *)malloc(sizeof(int) * x);
}

void find_path(void)
{
	int found = 0, resign = 0;

	int x = init[0];
	int y = init[1];
	int g = 0;

	arr_manage *open = NULL;

#if 0
	int **open = get_array(3, 1);
	open[0][0] = g;
	open[0][1] = x;
	open[0][2] = y;
#endif

	get_arr_manage(3, 1, &open);

	open->arr[0][0] = g;
	open->arr[0][1] = x;
	open->arr[0][2] = y;

#if 1
	int **closed = get_array(6, 6);
	closed[init[0]][init[1]] = 1;
#endif

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
