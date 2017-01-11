#include "mxm.h"
//we should use only 9 threads at most to run it

Matrix::Matrix(int sizea, int sizeb, int init)
	{
	a = sizea;
	b = sizeb;
	m = (double *)malloc(sizeof(double) * a * b);
        if(!init){
            memset(m, 0, sizeof(double)* (a) * (b));
            return ;
        }
        int i,j;
        for(i=0;i<a;i++)
        	for(j=0;j<b;j++)
			*(m+i*(b)+j) = (double)(rand()%num);
    }

void Matrix::Cross(Matrix *a, Matrix *b, void *arg){
    	int i, j, k;
    	Point *p = (Point *)arg;
    	int ax = p->x;
    	int alen = p->xlen;
    	int cy = p->y;
    	int clen = p->ylen;
        for(i=ax; i<(ax+alen); i++)
    	   for(j=cy; j<(cy+clen); j++)
    	      for(k=0; k<(a->b); k++)
    	         *(m+i*((this->b))+j) += (*(a->m+i * (a->b)+k)) * (*(b->m+k * (b->b)+j));
    }



