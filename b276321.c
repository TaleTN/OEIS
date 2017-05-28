#include <stdio.h>
#include <tommath.h>

void fact(mp_int* y, int n)
{
	int i;
	mp_set(y, 1);
	for (i = 1; i <= n; ++i) mp_mul_d(y, i, y);
}

void ipow(mp_int* y, int n, int p)
{
	mp_set(y, n >= 0 ? n : -n);
	if (n < 0) mp_neg(y, y);
	mp_expt_d(y, p, y);
}

void C(mp_int* y, int n, int k)
{
	mp_int a, b;
	mp_init_multi(&a, &b, NULL);

	fact(y, n);
	fact(&a, k);
	fact(&b, n - k);

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
		ipow(&a, n - (m + 1), i);
		ipow(&b, -1, m - j);
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
	char str[1024];
	int n, i, j, x = 1;
	mp_int y;
	mp_init(&y);

	for (n = 1; n <= 31; ++n)
	{
		for (i = 0; i < n; ++i)
		{
			for (j = 0; j < n; ++j)
			{
				M(&y, n, i, j);

				mp_toradix(&y, str, 10);
				printf("%d %s\n", x++, str);
			}
		}
	}

	mp_clear(&y);
}
