/* Convolution */

#include<stdio.h>
#include<math.h>
#define FREQ 500
int x[8] = {1,2,2,1,0,0,0,0};
int h[8] = {3,2,1,1,0,0,0,0};
float y[15];
int main(){
	int i=0,j=0;
	for(i=0;i<15;i++){
		y[i]=0;
		for(j=0;j<8;j++){
			if ((i - j) >= 0 && (i-j) < 8){
				y[i]=y[i]+(x[j]*h[i-j]);
			}
		}
	}
	for(i=0;i<15;i++){
		printf("%f\n",y[i]);
	}
	return 0;
}
