#include "mxm.h"
#include <sys/time.h>

#define LA 1000
#define LB 1000
#define LC 1000
int diva = 3;
int divc = 3;

Matrix *a,*b,*c;
pthread_t hThread[10][10];
Point array[10][10];

int Myatoi(char *c){
  int sum = 0;
  while(*c != '\0'){
    sum *= 10;
    sum += (*c - '0');
    c++;
  }
  return sum;
}


void *MultMatrix(void *arg){
    c->Cross(a, b, arg);
}

char *id;

int main(int argc, char **argv){
  srand(time(0));
  int la, lb, lc;
  if(argc==5){
    la = lb = lc = atoi(*(argv+1));
    id = argv[2];
    diva = atoi(argv[3]);
    divc = atoi(argv[4]);
  }
  else if(argc==7){
    la = Myatoi(*(argv+1));
    lb = Myatoi(*(argv+2));
    lc = Myatoi(*(argv+3));
    id = argv[4];
    diva = atoi(argv[5]);
    divc = atoi(argv[6]);
  }
  else if(argc==4){
    printf("use 1000, 1000, 1000\n");
    la = LA; lb = LB; lc = LC;
    id = argv[1];
    diva = atoi(argv[2]);
    divc = atoi(argv[3]);
  }
  else{
    if(argc>1) printf("argc error,use 1000, 1000, 1000\n");
    la = LA; lb = LB; lc = LC;
  }
  strcat(id, "a");
  a = new Matrix( la, lb, 1);
  strcat(id, "b");
  b = new Matrix( lb, lc, 1);
  strcat(id, "c");
  c = new Matrix( la, lc, 0);
  int i,j;
  int adis = la/diva;
  int cdis = lc/divc;
  timeval t;
  double t1, t2;
  printf("pthread maker %d * %d -> %d %d\n", diva, divc, adis, cdis);
  gettimeofday(&t, NULL);
  t1 = t.tv_sec + (t.tv_usec/1000000.0);
  for(i=0; i<diva; i++)
     for(j=0; j<divc; j++){//x, y. xlen, ylen
        array[i][j].x = i*adis;
        array[i][j].y = j*cdis;
        if(i+1==diva) array[i][j].xlen = la - i*adis;
        else array[i][j].xlen = adis;
        if(j+1==divc) array[i][j].ylen = lc - j*cdis;
        else array[i][j].ylen = cdis;
        pthread_create(&hThread[i][j], NULL, MultMatrix, (void *)&array[i][j]);
     }
  for(i=0; i<diva; i++)
     for(j=0; j<divc; j++)
        pthread_join(hThread[i][j], NULL);
  gettimeofday(&t, NULL);
  t2 = t.tv_sec + (t.tv_usec/1000000.0);
  printf("It costs %.4f\n", t2 - t1);
  return 0;
}
