/*
  Copyright (C) 2017 Theo Niessink <theo@taletn.com>
  This work is free. You can redistribute it and/or modify it under the
  terms of the Do What The Fuck You Want To Public License, Version 2,
  as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

  Favard constant K(n) = a(n) / b(n), where a(n) = abs(1 + Sum_{k=1..floor(n/2)} ((-1)^(k mod 2) * a(2*k - 1) * b(n) / (2^(n - (2*k - 1)) * (n - (2*k - 1))! * b(2*k - 1)))), and b(n) = 2^n * n!.

*/

#include <stdio.h>
#include <stdlib.h>

#include <tommath.h>

void mp_fact(mp_int* y, int n)
{
	int i;
	mp_set(y, 1);
	for (i = 1; i <= n; ++i) mp_mul_d(y, i, y);
}

void K(int r, mp_int* num, mp_int* denom, mp_int* tbl)
{
	mp_int a, b, y, *pair;
	int i, j, k;

	mp_init_multi(&a, &b, &y, NULL);

	for (i = 1; i <= r; ++i)
	{
		if (mp_cmp_d(tbl + 2*i, 0) == MP_EQ)
		{
			mp_fact(&b, i);
			mp_mul_2d(&b, i, &b);

			mp_set(&y, 1);
			for (j = 1; j < i; j += 2)
			{
				k = i - j;
				pair = tbl + 2*j;

				mp_fact(&a, k);
				mp_mul(&a, pair + 1, &a);
				mp_mul_2d(&a, k, &a);

				mp_div(&b, &a, &a, NULL);
				mp_mul(&a, pair, &a);

				if (j & 2) mp_add(&y, &a, &y); else mp_sub(&y, &a, &y);
			}
			mp_abs(&y, &a);

			#ifndef NO_GCD
			mp_gcd(&a, &b, &y);
			if (mp_cmp_d(&y, 1) == MP_GT)
			{
				mp_div(&a, &y, &a, NULL);
				mp_div(&b, &y, &b, NULL);
			}
			#endif

			pair = tbl + 2*i;
			mp_copy(&a, pair);
			mp_copy(&b, pair + 1);
		}
	}

	mp_clear_multi(&a, &b, &y, NULL);

	pair = tbl + 2*r;
	mp_copy(pair, num);
	mp_copy(pair + 1, denom);
}

int main()
{
	mp_int num, denom, *tbl;
	char str[1024];
	int r, i, n = 200;

	mp_init_multi(&num, &denom, NULL);

	tbl = malloc(2*n * sizeof(mp_int));
	if (!tbl) return 1;

	/* f(0) = 1, g(0) = 1 */
	for (i = 0; i < 2; ++i) mp_init_set(tbl + i, 1);

	for (; i < 2*n; ++i)
	{
		mp_init(tbl + i);
		mp_zero(tbl + i);
	}

	printf("# %s\n",
	#ifdef A050971
	"A050971"
	#else
	"A050970"
	#endif
	);

	for (r = 0; r < n;)
	{
		K(r, &num, &denom, tbl);

		mp_toradix(
		#ifdef A050971
		&denom,
		#else
		&num,
		#endif
		str, 10);
		
		printf("%d %s\n", ++r, str);
	}
	
	for (i = 0; i < 2*n; ++i) mp_clear(tbl + i);
	free(tbl);

	mp_clear_multi(&num, &denom, NULL);
}
