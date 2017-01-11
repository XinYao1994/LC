#include <setjmp.h>
#include <stdio.h>

jmp_buf buf;

void banana(){
	printf("in banaba() now\n");
	longjmp(buf, 1);
	printf("never see, because longjump happened\n");
}

int main()
{
	if(setjmp(buf)) printf("back in main\n");
	else {printf("fisrt coming\n"); banana();}
}
