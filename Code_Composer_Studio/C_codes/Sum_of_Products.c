/* Sum of Products */

#include <stdio.h>
int main(void) {
	int N, x[100], h[100], sum=0, i, j;
	printf("Length of sequence:\n");
	scanf("%d", &N);
	printf("First sequence:\n");
	for(i=0; i<N; i++)
		scanf("%d", &x[i]);
	printf("Second sequence:\n");
	for(i=0; i<N; i++)
		scanf("%d", &h[i]);
	for(j=0; j<N; j++)
		sum+=x[j]*h[j];
	printf("%d", sum);
	return 0;
}
