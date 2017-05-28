/*
  Copyright (C) 2016, 2017 Theo Niessink <theo@taletn.com>
  This work is free. You can redistribute it and/or modify it under the
  terms of the Do What The Fuck You Want To Public License, Version 2,
  as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

  M(n, i, j) = C(n-1, i) * Sum_{m=j..n-1} (n-(m+1))^i * (-1)^(m-j) * C(n, m-j), where binomial coefficient C(n, k) = n! / (k!*(n-k)!).

*/

#include <stdio.h>

long long ipow(int b, int p)
{
	long long y = 1;
	int i;
	for (i = 1; i <= p; ++i) y *= b;
	return y;
}

unsigned long long ifact(int n)
{
	unsigned long long y = 1;
	int i;
	for (i = 1; i <= n; ++i) y *= i;
	return y;
}

unsigned long long C(int n, int k)
{
	return ifact(n) / (ifact(k) * ifact(n - k));
}

long long M(int n, int i, int j)
{
	long long sum = 0;
	int m;
	for (m = j; m < n; ++m)
	{
		sum += ipow(n - (m + 1), i) * ipow(-1, m - j) * C(n, m - j);
	}
	return C(n - 1, i) * sum;
}

int main()
{
	long long y;
	int n, i, j, x = 0;

	printf("# A276321\n");
	for (n = 1; n <= 20; ++n)
	{
		for (i = 0; i < n; ++i)
		{
			for (j = 0; j < n; ++j)
			{
				y = M(n, i, j);
				printf("%d %lld\n", ++x, y);
			}
		}
	}
}
