# Copyright (C) 2016-2021 Theo Niessink <theo@taletn.com>
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

CFLAGS = /nologo /O2 /GS- /GR- /DNDEBUG /DWIN32 /D_CRT_SECURE_NO_WARNINGS /W3

LTM_OBJECTS = \
libtommath/mp_2expt.obj \
libtommath/mp_abs.obj \
libtommath/mp_add.obj \
libtommath/mp_add_d.obj \
libtommath/mp_addmod.obj \
libtommath/mp_and.obj \
libtommath/mp_clamp.obj \
libtommath/mp_clear.obj \
libtommath/mp_clear_multi.obj \
libtommath/mp_cmp.obj \
libtommath/mp_cmp_d.obj \
libtommath/mp_cmp_mag.obj \
libtommath/mp_cnt_lsb.obj \
libtommath/mp_complement.obj \
libtommath/mp_copy.obj \
libtommath/mp_count_bits.obj \
libtommath/mp_cutoffs.obj \
libtommath/mp_div.obj \
libtommath/mp_div_2.obj \
libtommath/mp_div_2d.obj \
libtommath/mp_div_d.obj \
libtommath/mp_dr_is_modulus.obj \
libtommath/mp_dr_reduce.obj \
libtommath/mp_dr_setup.obj \
libtommath/mp_error_to_string.obj \
libtommath/mp_exch.obj \
libtommath/mp_expt_n.obj \
libtommath/mp_exptmod.obj \
libtommath/mp_exteuclid.obj \
libtommath/mp_fread.obj \
libtommath/mp_from_sbin.obj \
libtommath/mp_from_ubin.obj \
libtommath/mp_fwrite.obj \
libtommath/mp_gcd.obj \
libtommath/mp_get_double.obj \
libtommath/mp_get_i32.obj \
libtommath/mp_get_i64.obj \
libtommath/mp_get_l.obj \
libtommath/mp_get_mag_u32.obj \
libtommath/mp_get_mag_u64.obj \
libtommath/mp_get_mag_ul.obj \
libtommath/mp_grow.obj \
libtommath/mp_init.obj \
libtommath/mp_init_copy.obj \
libtommath/mp_init_i32.obj \
libtommath/mp_init_i64.obj \
libtommath/mp_init_l.obj \
libtommath/mp_init_multi.obj \
libtommath/mp_init_set.obj \
libtommath/mp_init_size.obj \
libtommath/mp_init_u32.obj \
libtommath/mp_init_u64.obj \
libtommath/mp_init_ul.obj \
libtommath/mp_invmod.obj \
libtommath/mp_is_square.obj \
libtommath/mp_kronecker.obj \
libtommath/mp_lcm.obj \
libtommath/mp_log_n.obj \
libtommath/mp_lshd.obj \
libtommath/mp_mod.obj \
libtommath/mp_mod_2d.obj \
libtommath/mp_montgomery_calc_normalization.obj \
libtommath/mp_montgomery_reduce.obj \
libtommath/mp_montgomery_setup.obj \
libtommath/mp_mul.obj \
libtommath/mp_mul_2.obj \
libtommath/mp_mul_2d.obj \
libtommath/mp_mul_d.obj \
libtommath/mp_mulmod.obj \
libtommath/mp_neg.obj \
libtommath/mp_or.obj \
libtommath/mp_pack.obj \
libtommath/mp_pack_count.obj \
libtommath/mp_prime_fermat.obj \
libtommath/mp_prime_frobenius_underwood.obj \
libtommath/mp_prime_is_prime.obj \
libtommath/mp_prime_miller_rabin.obj \
libtommath/mp_prime_next_prime.obj \
libtommath/mp_prime_rabin_miller_trials.obj \
libtommath/mp_prime_rand.obj \
libtommath/mp_prime_strong_lucas_selfridge.obj \
libtommath/mp_radix_size.obj \
libtommath/mp_radix_size_overestimate.obj \
libtommath/mp_rand.obj \
libtommath/mp_rand_source.obj \
libtommath/mp_read_radix.obj \
libtommath/mp_reduce.obj \
libtommath/mp_reduce_2k.obj \
libtommath/mp_reduce_2k_l.obj \
libtommath/mp_reduce_2k_setup.obj \
libtommath/mp_reduce_2k_setup_l.obj \
libtommath/mp_reduce_is_2k.obj \
libtommath/mp_reduce_is_2k_l.obj \
libtommath/mp_reduce_setup.obj \
libtommath/mp_root_n.obj \
libtommath/mp_rshd.obj \
libtommath/mp_sbin_size.obj \
libtommath/mp_set.obj \
libtommath/mp_set_double.obj \
libtommath/mp_set_i32.obj \
libtommath/mp_set_i64.obj \
libtommath/mp_set_l.obj \
libtommath/mp_set_u32.obj \
libtommath/mp_set_u64.obj \
libtommath/mp_set_ul.obj \
libtommath/mp_shrink.obj \
libtommath/mp_signed_rsh.obj \
libtommath/mp_sqrmod.obj \
libtommath/mp_sqrt.obj \
libtommath/mp_sqrtmod_prime.obj \
libtommath/mp_sub.obj \
libtommath/mp_sub_d.obj \
libtommath/mp_submod.obj \
libtommath/mp_to_radix.obj \
libtommath/mp_to_sbin.obj \
libtommath/mp_to_ubin.obj \
libtommath/mp_ubin_size.obj \
libtommath/mp_unpack.obj \
libtommath/mp_xor.obj \
libtommath/mp_zero.obj \
libtommath/s_mp_add.obj \
libtommath/s_mp_copy_digs.obj \
libtommath/s_mp_div_3.obj \
libtommath/s_mp_div_recursive.obj \
libtommath/s_mp_div_school.obj \
libtommath/s_mp_div_small.obj \
libtommath/s_mp_exptmod.obj \
libtommath/s_mp_exptmod_fast.obj \
libtommath/s_mp_get_bit.obj \
libtommath/s_mp_invmod.obj \
libtommath/s_mp_invmod_odd.obj \
libtommath/s_mp_log.obj \
libtommath/s_mp_log_2expt.obj \
libtommath/s_mp_log_d.obj \
libtommath/s_mp_montgomery_reduce_comba.obj \
libtommath/s_mp_mul.obj \
libtommath/s_mp_mul_balance.obj \
libtommath/s_mp_mul_comba.obj \
libtommath/s_mp_mul_high.obj \
libtommath/s_mp_mul_high_comba.obj \
libtommath/s_mp_mul_karatsuba.obj \
libtommath/s_mp_mul_toom.obj \
libtommath/s_mp_prime_is_divisible.obj \
libtommath/s_mp_prime_tab.obj \
libtommath/s_mp_radix_map.obj \
libtommath/s_mp_radix_size_overestimate.obj \
libtommath/s_mp_rand_platform.obj \
libtommath/s_mp_sqr.obj \
libtommath/s_mp_sqr_comba.obj \
libtommath/s_mp_sqr_karatsuba.obj \
libtommath/s_mp_sqr_toom.obj \
libtommath/s_mp_sub.obj \
libtommath/s_mp_zero_buf.obj \
libtommath/s_mp_zero_digs.obj

LTM_HEADERS = \
libtommath/tommath.h \
libtommath/tommath_class.h \
libtommath/tommath_cutoffs.h \
libtommath/tommath_private.h \
libtommath/tommath_superclass.h

default:
	@type README

{libtommath}.c.obj::
	$(CC) $(CFLAGS) /Ilibtommath /Folibtommath/ /wd4146 /c $<

libtommath: $(LTM_OBJECTS)

a050970: a050970.c
	$(CC) $(CFLAGS) $**
	a050970.exe

b050970: b050970.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) /Ilibtommath $** advapi32.lib
	b050970.exe > b050970.txt

a050971: a050970.c
	$(CC) $(CFLAGS) /DA050971 /Fea050971.exe $**
	a050971.exe

b050971: b050970.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) /Ilibtommath /DA050971 /Feb050971.exe $** advapi32.lib
	b050971.exe > b050971.txt

a276321: a276321.c
	$(CC) $(CFLAGS) $**
	a276321.exe > b276321.txt

b276321: b276321.c $(LTM_OBJECTS)
	$(CC) $(CFLAGS) /Ilibtommath $** advapi32.lib
	b276321.exe > b276321.txt

clean:
	for /r %i in (*.obj *.exe) do @del "%i"
	for %i in (b??????.txt) do @if exist "%i" del "%i"
