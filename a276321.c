#include <stdio.h>

long long int fact(int n)
{
	long long int y = 1;
	int i;
	for (i = 1; i <= n; ++i) y *= i;
	return y;
}

long long int ipow(int n, int p)
{
	long long int y = 1;
	int i;
	for (i = 0; i < p; ++i) y *= n;
	return y;
}

long long int C(int n, int k)
{
	return fact(n) / (fact(k) * fact(n - k));
}

long long int M(int n, int i, int j)
{
	long long int y = 0;
	int m;
	for (m = j; m < n; ++m)
	{
		y += ipow(n - (m + 1), i) * ipow(-1, m - j) * C(n, m - j);
	}
	return C(n - 1, i) * y;
}

int main()
{
	int n, i, j;
	for (n = 1; n <= 20; ++n)
	{
		for (i = 0; i < n; ++i)
		{
			for (j = 0; j < n; ++j)
			{
				const long long int y = M(n, i, j);
				printf("%lld, ", y);
			}
		}
	}
	printf("...\n");
}
