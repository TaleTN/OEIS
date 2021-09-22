# Copyright (C) 2016-2021 Theo Niessink <theo@taletn.com>
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

CFLAGS = -O2 -fno-rtti -fno-stack-protector -DNDEBUG -Wall

LTM_OBJECTS = \
libtommath/mp_2expt.o \
libtommath/mp_abs.o \
libtommath/mp_add.o \
libtommath/mp_add_d.o \
libtommath/mp_addmod.o \
libtommath/mp_and.o \
libtommath/mp_clamp.o \
libtommath/mp_clear.o \
libtommath/mp_clear_multi.o \
libtommath/mp_cmp.o \
libtommath/mp_cmp_d.o \
libtommath/mp_cmp_mag.o \
libtommath/mp_cnt_lsb.o \
libtommath/mp_complement.o \
libtommath/mp_copy.o \
libtommath/mp_count_bits.o \
libtommath/mp_cutoffs.o \
libtommath/mp_div.o \
libtommath/mp_div_2.o \
libtommath/mp_div_2d.o \
libtommath/mp_div_d.o \
libtommath/mp_dr_is_modulus.o \
libtommath/mp_dr_reduce.o \
libtommath/mp_dr_setup.o \
libtommath/mp_error_to_string.o \
libtommath/mp_exch.o \
libtommath/mp_expt_n.o \
libtommath/mp_exptmod.o \
libtommath/mp_exteuclid.o \
libtommath/mp_fread.o \
libtommath/mp_from_sbin.o \
libtommath/mp_from_ubin.o \
libtommath/mp_fwrite.o \
libtommath/mp_gcd.o \
libtommath/mp_get_double.o \
libtommath/mp_get_i32.o \
libtommath/mp_get_i64.o \
libtommath/mp_get_l.o \
libtommath/mp_get_mag_u32.o \
libtommath/mp_get_mag_u64.o \
libtommath/mp_get_mag_ul.o \
libtommath/mp_grow.o \
libtommath/mp_init.o \
libtommath/mp_init_copy.o \
libtommath/mp_init_i32.o \
libtommath/mp_init_i64.o \
libtommath/mp_init_l.o \
libtommath/mp_init_multi.o \
libtommath/mp_init_set.o \
libtommath/mp_init_size.o \
libtommath/mp_init_u32.o \
libtommath/mp_init_u64.o \
libtommath/mp_init_ul.o \
libtommath/mp_invmod.o \
libtommath/mp_is_square.o \
libtommath/mp_kronecker.o \
libtommath/mp_lcm.o \
libtommath/mp_log_n.o \
libtommath/mp_lshd.o \
libtommath/mp_mod.o \
libtommath/mp_mod_2d.o \
libtommath/mp_montgomery_calc_normalization.o \
libtommath/mp_montgomery_reduce.o \
libtommath/mp_montgomery_setup.o \
libtommath/mp_mul.o \
libtommath/mp_mul_2.o \
libtommath/mp_mul_2d.o \
libtommath/mp_mul_d.o \
libtommath/mp_mulmod.o \
libtommath/mp_neg.o \
libtommath/mp_or.o \
libtommath/mp_pack.o \
libtommath/mp_pack_count.o \
libtommath/mp_prime_fermat.o \
libtommath/mp_prime_frobenius_underwood.o \
libtommath/mp_prime_is_prime.o \
libtommath/mp_prime_miller_rabin.o \
libtommath/mp_prime_next_prime.o \
libtommath/mp_prime_rabin_miller_trials.o \
libtommath/mp_prime_rand.o \
libtommath/mp_prime_strong_lucas_selfridge.o \
libtommath/mp_radix_size.o \
libtommath/mp_radix_size_overestimate.o \
libtommath/mp_rand.o \
libtommath/mp_rand_source.o \
libtommath/mp_read_radix.o \
libtommath/mp_reduce.o \
libtommath/mp_reduce_2k.o \
libtommath/mp_reduce_2k_l.o \
libtommath/mp_reduce_2k_setup.o \
libtommath/mp_reduce_2k_setup_l.o \
libtommath/mp_reduce_is_2k.o \
libtommath/mp_reduce_is_2k_l.o \
libtommath/mp_reduce_setup.o \
libtommath/mp_root_n.o \
libtommath/mp_rshd.o \
libtommath/mp_sbin_size.o \
libtommath/mp_set.o \
libtommath/mp_set_double.o \
libtommath/mp_set_i32.o \
libtommath/mp_set_i64.o \
libtommath/mp_set_l.o \
libtommath/mp_set_u32.o \
libtommath/mp_set_u64.o \
libtommath/mp_set_ul.o \
libtommath/mp_shrink.o \
libtommath/mp_signed_rsh.o \
libtommath/mp_sqrmod.o \
libtommath/mp_sqrt.o \
libtommath/mp_sqrtmod_prime.o \
libtommath/mp_sub.o \
libtommath/mp_sub_d.o \
libtommath/mp_submod.o \
libtommath/mp_to_radix.o \
libtommath/mp_to_sbin.o \
libtommath/mp_to_ubin.o \
libtommath/mp_ubin_size.o \
libtommath/mp_unpack.o \
libtommath/mp_xor.o \
libtommath/mp_zero.o \
libtommath/s_mp_add.o \
libtommath/s_mp_copy_digs.o \
libtommath/s_mp_div_3.o \
libtommath/s_mp_div_recursive.o \
libtommath/s_mp_div_school.o \
libtommath/s_mp_div_small.o \
libtommath/s_mp_exptmod.o \
libtommath/s_mp_exptmod_fast.o \
libtommath/s_mp_get_bit.o \
libtommath/s_mp_invmod.o \
libtommath/s_mp_invmod_odd.o \
libtommath/s_mp_log.o \
libtommath/s_mp_log_2expt.o \
libtommath/s_mp_log_d.o \
libtommath/s_mp_montgomery_reduce_comba.o \
libtommath/s_mp_mul.o \
libtommath/s_mp_mul_balance.o \
libtommath/s_mp_mul_comba.o \
libtommath/s_mp_mul_high.o \
libtommath/s_mp_mul_high_comba.o \
libtommath/s_mp_mul_karatsuba.o \
libtommath/s_mp_mul_toom.o \
libtommath/s_mp_prime_is_divisible.o \
libtommath/s_mp_prime_tab.o \
libtommath/s_mp_radix_map.o \
libtommath/s_mp_radix_size_overestimate.o \
libtommath/s_mp_rand_platform.o \
libtommath/s_mp_sqr.o \
libtommath/s_mp_sqr_comba.o \
libtommath/s_mp_sqr_karatsuba.o \
libtommath/s_mp_sqr_toom.o \
libtommath/s_mp_sub.o \
libtommath/s_mp_zero_buf.o \
libtommath/s_mp_zero_digs.o

LTM_HEADERS = \
libtommath/tommath.h \
libtommath/tommath_class.h \
libtommath/tommath_cutoffs.h \
libtommath/tommath_private.h \
libtommath/tommath_superclass.h

default:
	cat README

libtommath/%.o: libtommath/%.c
	$(CC) $(CFLAGS) -I./libtommath -o $@ -c $<

libtommath: $(LTM_OBJECTS)

a050970: a050970.c
	$(CC) $(CFLAGS) -o a050970 $^
	./a050970

b050970: b050970.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) -I./libtommath -o b050970 $^
	./b050970 > b050970.txt

a050971: a050970.c
	$(CC) $(CFLAGS) -DA050971 -o a050971 $^
	./a050971

b050971: b050970.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) -I./libtommath -DA050971 -o b050971 $^
	./b050971 > b050971.txt

a276321: a276321.c
	$(CC) $(CFLAGS) -o a276321 $^
	./a276321 > b276321.txt

b276321: b276321.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) -I./libtommath -o b276321 $^
	./b276321 > b276321.txt

clean:
	rm -f `find . -type f | grep "[.]o" | xargs`
	rm -f a?????? b?????? b??????.txt
