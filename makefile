# Copyright (C) 2016, 2017 Theo Niessink <theo@taletn.com>
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

CFLAGS = /O2 /GS- /GR- /DNDEBUG /DWIN32 /D_CRT_SECURE_NO_WARNINGS /W3

LTM_OBJECTS = \
libtommath/bn_error.obj \
libtommath/bn_fast_mp_invmod.obj \
libtommath/bn_fast_mp_montgomery_reduce.obj \
libtommath/bn_fast_s_mp_mul_digs.obj \
libtommath/bn_fast_s_mp_mul_high_digs.obj \
libtommath/bn_fast_s_mp_sqr.obj \
libtommath/bn_mp_2expt.obj \
libtommath/bn_mp_abs.obj \
libtommath/bn_mp_add.obj \
libtommath/bn_mp_add_d.obj \
libtommath/bn_mp_addmod.obj \
libtommath/bn_mp_and.obj \
libtommath/bn_mp_clamp.obj \
libtommath/bn_mp_clear.obj \
libtommath/bn_mp_clear_multi.obj \
libtommath/bn_mp_cmp.obj \
libtommath/bn_mp_cmp_d.obj \
libtommath/bn_mp_cmp_mag.obj \
libtommath/bn_mp_cnt_lsb.obj \
libtommath/bn_mp_copy.obj \
libtommath/bn_mp_count_bits.obj \
libtommath/bn_mp_div.obj \
libtommath/bn_mp_div_2.obj \
libtommath/bn_mp_div_2d.obj \
libtommath/bn_mp_div_3.obj \
libtommath/bn_mp_div_d.obj \
libtommath/bn_mp_dr_is_modulus.obj \
libtommath/bn_mp_dr_reduce.obj \
libtommath/bn_mp_dr_setup.obj \
libtommath/bn_mp_exch.obj \
libtommath/bn_mp_export.obj \
libtommath/bn_mp_expt_d.obj \
libtommath/bn_mp_expt_d_ex.obj \
libtommath/bn_mp_exptmod.obj \
libtommath/bn_mp_exptmod_fast.obj \
libtommath/bn_mp_exteuclid.obj \
libtommath/bn_mp_fread.obj \
libtommath/bn_mp_fwrite.obj \
libtommath/bn_mp_gcd.obj \
libtommath/bn_mp_get_int.obj \
libtommath/bn_mp_get_long.obj \
libtommath/bn_mp_get_long_long.obj \
libtommath/bn_mp_grow.obj \
libtommath/bn_mp_import.obj \
libtommath/bn_mp_init.obj \
libtommath/bn_mp_init_copy.obj \
libtommath/bn_mp_init_multi.obj \
libtommath/bn_mp_init_set.obj \
libtommath/bn_mp_init_set_int.obj \
libtommath/bn_mp_init_size.obj \
libtommath/bn_mp_invmod.obj \
libtommath/bn_mp_invmod_slow.obj \
libtommath/bn_mp_is_square.obj \
libtommath/bn_mp_jacobi.obj \
libtommath/bn_mp_karatsuba_mul.obj \
libtommath/bn_mp_karatsuba_sqr.obj \
libtommath/bn_mp_lcm.obj \
libtommath/bn_mp_lshd.obj \
libtommath/bn_mp_mod.obj \
libtommath/bn_mp_mod_2d.obj \
libtommath/bn_mp_mod_d.obj \
libtommath/bn_mp_montgomery_calc_normalization.obj \
libtommath/bn_mp_montgomery_reduce.obj \
libtommath/bn_mp_montgomery_setup.obj \
libtommath/bn_mp_mul.obj \
libtommath/bn_mp_mul_2.obj \
libtommath/bn_mp_mul_2d.obj \
libtommath/bn_mp_mul_d.obj \
libtommath/bn_mp_mulmod.obj \
libtommath/bn_mp_n_root.obj \
libtommath/bn_mp_n_root_ex.obj \
libtommath/bn_mp_neg.obj \
libtommath/bn_mp_or.obj \
libtommath/bn_mp_prime_fermat.obj \
libtommath/bn_mp_prime_is_divisible.obj \
libtommath/bn_mp_prime_is_prime.obj \
libtommath/bn_mp_prime_miller_rabin.obj \
libtommath/bn_mp_prime_next_prime.obj \
libtommath/bn_mp_prime_rabin_miller_trials.obj \
libtommath/bn_mp_prime_random_ex.obj \
libtommath/bn_mp_radix_size.obj \
libtommath/bn_mp_radix_smap.obj \
libtommath/bn_mp_rand.obj \
libtommath/bn_mp_read_radix.obj \
libtommath/bn_mp_read_signed_bin.obj \
libtommath/bn_mp_read_unsigned_bin.obj \
libtommath/bn_mp_reduce.obj \
libtommath/bn_mp_reduce_2k.obj \
libtommath/bn_mp_reduce_2k_l.obj \
libtommath/bn_mp_reduce_2k_setup.obj \
libtommath/bn_mp_reduce_2k_setup_l.obj \
libtommath/bn_mp_reduce_is_2k.obj \
libtommath/bn_mp_reduce_is_2k_l.obj \
libtommath/bn_mp_reduce_setup.obj \
libtommath/bn_mp_rshd.obj \
libtommath/bn_mp_set.obj \
libtommath/bn_mp_set_int.obj \
libtommath/bn_mp_set_long.obj \
libtommath/bn_mp_set_long_long.obj \
libtommath/bn_mp_shrink.obj \
libtommath/bn_mp_signed_bin_size.obj \
libtommath/bn_mp_sqr.obj \
libtommath/bn_mp_sqrmod.obj \
libtommath/bn_mp_sqrt.obj \
libtommath/bn_mp_sqrtmod_prime.obj \
libtommath/bn_mp_sub.obj \
libtommath/bn_mp_sub_d.obj \
libtommath/bn_mp_submod.obj \
libtommath/bn_mp_to_signed_bin.obj \
libtommath/bn_mp_to_signed_bin_n.obj \
libtommath/bn_mp_to_unsigned_bin.obj \
libtommath/bn_mp_to_unsigned_bin_n.obj \
libtommath/bn_mp_toom_mul.obj \
libtommath/bn_mp_toom_sqr.obj \
libtommath/bn_mp_toradix.obj \
libtommath/bn_mp_toradix_n.obj \
libtommath/bn_mp_unsigned_bin_size.obj \
libtommath/bn_mp_xor.obj \
libtommath/bn_mp_zero.obj \
libtommath/bn_prime_tab.obj \
libtommath/bn_reverse.obj \
libtommath/bn_s_mp_add.obj \
libtommath/bn_s_mp_exptmod.obj \
libtommath/bn_s_mp_mul_digs.obj \
libtommath/bn_s_mp_mul_high_digs.obj \
libtommath/bn_s_mp_sqr.obj \
libtommath/bn_s_mp_sub.obj \
libtommath/bncore.obj

LTM_HEADERS = \
libtommath/tommath.h \
libtommath/tommath_class.h \
libtommath/tommath_private.h \
libtommath/tommath_superclass.h

default:
	@type README

{libtommath}.c.obj::
	$(CC) $(CFLAGS) /Ilibtommath /Folibtommath/ /c $<

libtommath: $(LTM_OBJECTS)

clean:
	for /r %i in (*.obj *.exe) do @del "%i"
	for %i in (b??????.txt) do @if exist "%i" del "%i"
