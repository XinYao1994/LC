#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef int (*FuncMax)(int x, int y);
#pragma check_stack(off)
int max(int a, int b){
	return a>b?a:b;
}

int main(){
	FuncMax pfun = max;
	printf("1 & 2, max is %d\n", (pfun)(1, 2));
	pfun = (FuncMax)malloc(10000);
	printf("max length %d\n", (char *)main - (char *)max);
	memcpy(pfun, max, (char *)main - (char *)max);
	printf("copy finished\n");
	printf("max : %10s\n", (char *)max);
	printf("func : %10s\n", (char *)pfun);
	printf("1 & 2, max is %d\n", (pfun)(1, 2));
	return 0;
}
#pragma check_stack
