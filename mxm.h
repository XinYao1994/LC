#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#ifndef __MXM__H_
#define __MXM__H_

#define num 50

typedef struct{
  int x,y;
  int xlen, ylen;
}Point;

class Matrix{
    public:
	double *m;
	int a, b;
	Matrix(int sizea, int sizeb, int init); 
	void Cross(Matrix *a, Matrix *b, void *arg);
	~Matrix(){}
};

#endif
