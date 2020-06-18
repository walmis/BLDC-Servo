#include <math.h>
#include <stdio.h>
#include "fp12.h"

int SVM(float alpha, float beta, float* tA, float* tB, float* tC) ;
int SVMfp(fp12 alpha, fp12 beta, fp12* tA, fp12* tB, fp12* tC);

int main() {
    for(int i = 0; i < 360; i++) {
        float alpha = sin(i*M_PI/180)*0.866025404;
        float beta = sin(i*M_PI/180 + M_PI/2)*0.866025404;


        //float a,b,c;
        fp12 a,b,c;
        a=0; b=0;c=0;
        SVMfp(alpha, beta, &a, &b, &c);
        printf("%d %f %f %d %d %d\n", i, alpha*4096, beta*4096, a.val, b.val, c.val);
    }

}