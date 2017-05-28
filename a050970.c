/*
  Copyright (C) 2017 Theo Niessink <theo@taletn.com>
  This work is free. You can redistribute it and/or modify it under the
  terms of the Do What The Fuck You Want To Public License, Version 2,
  as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

  Favard constant K(n) = a(n) / b(n), where a(n) = abs(1 + Sum_{k=1..floor(n/2)} ((-1)^(k mod 2) * a(2*k - 1) * b(n) / (2^(n - (2*k - 1)) * (n - (2*k - 1))! * b(2*k - 1)))), and b(n) = 2^n * n!.

*/

#include <stdio.h>

long long iabs(long long n)
{
	return n < 0 ? -n : n;
}

long long ipow(int b, int p)
{
	int y = 1;
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

unsigned long long g(int r)
{
	return ipow(2, r) * ifact(r);
}

unsigned long long f(int r)
{
	long long sum = 0;
	int i;
	for (i = 1; i <= r/2; ++i)
	{
		sum += ipow(-1, i % 2) * f(2*i - 1) * (g(r) / (ipow(2, r - (2*i - 1)) * ifact(r - (2*i - 1)) * g(2*i - 1)));
	}
	return iabs(1 + sum);
}

unsigned long long gcd(unsigned long long a, unsigned long long b)
{
	unsigned long long tmp;
	while (a) { tmp = a; a = b % a; b = tmp; }
	return b;
}

int main()
{
	unsigned long long num, denom;
	int r;

	printf("# %s\n",
	#ifdef A050971
	"A050971"
	#else
	"A050970"
	#endif
	);

	for (r = 0; r < 16;)
	{
		num = f(r);
		denom = g(r);

		#ifndef NO_GCD
		num /= gcd(num, denom);
		denom /= gcd(num, denom);
		#endif

		printf("%d %llu\n", ++r,
		#ifdef A050971
		denom
		#else
		num
		#endif
		);
	}
}
