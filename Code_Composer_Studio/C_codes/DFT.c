/* DFT */

#include<stdio.h>
#include<math.h>
#define N 8
void main()
{
	int i, k, n;
	int x[8];
	float pi=3.1416, sumre=0, sumim=0, out_real[8]={0.0}, out_imag[8]={0.0};
	printf("Enter the elements \n");
	for(i=0;i<N;i++)
	{
		scanf("%d",&x[i]);
	}
	for(k=0;k<N;k++)
	{
		sumre=0;
		sumim=0;

		for(n=0;n<N;n++)
		{
			sumre=sumre+x[n]*cos(2*pi*k*n/N);
			sumim=sumim-x[n]*sin(2*pi*k*n/N);

		}
		out_real[k]=sumre;
		out_imag[k]=sumim;
		printf("X([%d])-\t%f\t+\t%fi\n",k,out_real[k],out_imag[k]);
	}
}
