/*
  Copyright (C) 2016-2021 Theo Niessink <theo@taletn.com>
  This work is free. You can redistribute it and/or modify it under the
  terms of the Do What The Fuck You Want To Public License, Version 2,
  as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

  M(n, i, j) = C(n-1, i) * Sum_{m=j..n-1} (n-(m+1))^i * (-1)^(m-j) * C(n, m-j), where binomial coefficient C(n, k) = n! / (k!*(n-k)!).

*/

#include <stdio.h>
#include <stdlib.h>

#include <tommath.h>

void mp_pow(mp_int* y, int b, int p)
{
	mp_set(y, abs(b));
	if (b < 0) mp_neg(y, y);
	mp_expt_n(y, p, y);
}

void mp_fact(mp_int* y, int n)
{
	int i;
	mp_set(y, 1);
	for (i = 1; i <= n; ++i) mp_mul_d(y, i, y);
}

void C(mp_int* y, int n, int k)
{
	mp_int a, b;
	mp_init_multi(&a, &b, NULL);

	mp_fact(y, n);
	mp_fact(&a, k);
	mp_fact(&b, n - k);

	mp_mul(&a, &b, &a);
	mp_div(y, &a, y, &b);

	mp_clear_multi(&a, &b, NULL);
}

void M(mp_int* y, int n, int i, int j)
{
	int m;
	mp_int a, b;
	mp_init_multi(&a, &b, NULL);

	mp_set(y, 0);
	for (m = j; m < n; ++m)
	{
		mp_pow(&a, n - (m + 1), i);
		mp_pow(&b, -1, m - j);
		mp_mul(&a, &b, &a);

		C(&b, n, m - j);
		mp_mul(&a, &b, &a);

		mp_add(y, &a, y);
	}
	C(&a, n - 1, i);
	mp_mul(y, &a, y);

	mp_clear_multi(&a, &b, NULL);
}

int main()
{
	mp_int y;
	char str[1024];
	int n, i, j, x = 0;

	mp_init(&y);

	printf("# A276321\n");
	for (n = 1; n <= 31; ++n)
	{
		for (i = 0; i < n; ++i)
		{
			for (j = 0; j < n; ++j)
			{
				M(&y, n, i, j);

				mp_to_decimal(&y, str, sizeof(str));
				printf("%d %s\n", ++x, str);
			}
		}
	}

	mp_clear(&y);
}
