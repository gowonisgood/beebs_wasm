/*
 * Copyright (C) 2020 TU Bergakademie Freiberg Karl Fessel
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 */

 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
 #include <stdbool.h>
 
 /*provide some test program*/
#include "blob/aha_compress.wasm.h"
#include "blob/aha_mont64.wasm.h"
#include "blob/bs.wasm.h"
#include "blob/bubblesort.wasm.h"
#include "blob/cnt.wasm.h"
#include "blob/compress.wasm.h"
#include "blob/cover.wasm.h"
#include "blob/crc32.wasm.h"
#include "blob/crc.wasm.h"
#include "blob/ctl_stack.wasm.h"
#include "blob/ctl_string.wasm.h"
#include "blob/ctl_vector.wasm.h"
#include "blob/cubic.wasm.h"
#include "blob/dijkstra.wasm.h"
#include "blob/dtoa.wasm.h"
#include "blob/duff.wasm.h"
#include "blob/edn.wasm.h"
#include "blob/expint.wasm.h"
#include "blob/fac.wasm.h"
#include "blob/fasta.wasm.h"
#include "blob/fdct.wasm.h"
#include "blob/fibcall.wasm.h"
#include "blob/fir.wasm.h"
#include "blob/frac.wasm.h"
#include "blob/huffbench.wasm.h"
#include "blob/insertsort.wasm.h"
#include "blob/janne_complex.wasm.h"
#include "blob/jfdctint.wasm.h"
#include "blob/lcdnum.wasm.h"
#include "blob/levenshtein.wasm.h"
#include "blob/ludcmp.wasm.h"
#include "blob/matmult_float.wasm.h"
#include "blob/matmult_int.wasm.h"
#include "blob/mergesort.wasm.h"
#include "blob/miniz.wasm.h"
#include "blob/minver.wasm.h"
#include "blob/nbody.wasm.h"
#include "blob/ndes.wasm.h"
#include "blob/nettle_aes.wasm.h"
#include "blob/nettle_arcfour.wasm.h"
#include "blob/nettle_cast128.wasm.h"
#include "blob/nettle_des.wasm.h"
#include "blob/nettle_md5.wasm.h"
#include "blob/nettle_sha256.wasm.h"
#include "blob/newlib_exp.wasm.h"
#include "blob/newlib_log.wasm.h"
#include "blob/newlib_mod.wasm.h"
#include "blob/newlib_sqrt.wasm.h"
#include "blob/nsichneu.wasm.h"
#include "blob/ns.wasm.h"
#include "blob/picojpeg.wasm.h"
#include "blob/prime.wasm.h"
#include "blob/qrduino.wasm.h"
#include "blob/qsort.wasm.h"
#include "blob/qurt.wasm.h"
#include "blob/recursion.wasm.h"
#include "blob/rijndael.wasm.h"
#include "blob/select.wasm.h"
#include "blob/sglib_arraybinsearch.wasm.h"
#include "blob/sglib_arrayheapsort.wasm.h"
#include "blob/sglib_arrayquicksort.wasm.h"
#include "blob/sglib_dllist.wasm.h"
#include "blob/sglib_hashtable.wasm.h"
#include "blob/sglib_listinsertsort.wasm.h"
#include "blob/sglib_listsort.wasm.h"
#include "blob/sglib_queue.wasm.h"
#include "blob/sglib_rbtree.wasm.h"
#include "blob/slre.wasm.h"
#include "blob/sqrt.wasm.h"
#include "blob/statemate.wasm.h"
#include "blob/stb_perlin.wasm.h"
#include "blob/stringsearch1.wasm.h"
#include "blob/strstr.wasm.h"
#include "blob/st.wasm.h"
#include "blob/tarai.wasm.h"
#include "blob/template.wasm.h"
#include "blob/trio_snprintf.wasm.h"
#include "blob/ud.wasm.h"
#include "blob/whetstone.wasm.h"
#include "blob/wikisort.wasm.h"


 bool iwasm_runtime_init(void);
 void iwasm_runtime_destroy(void);
 
 /* wamr_run is a very direct interpretation of "i like to have a wamr_run" */
 int wamr_run(void *bytecode, size_t bytecode_len, int argc, char **argv);
 
 /* wamr_run_cp creates a copy bytecode and argv
  * if argc is 0 it is set to 1 and argv[0] is set to ""
  * to create some space for a return value */
 int wamr_run_cp(const void *bytecode, size_t bytecode_len, int argc, const char **argv);


 // 불리언 값을 문자열로 변환하는 매크로
 #define telltruth(X) ((X) ? "true" : "false")


 
 int main(void)
 {
      
     int ret;



    // Test for aha_compress
    printf("iwasm_initilised_aha_compress: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_aha_compress = 0;
    const char *app_argv_aha_compress[] = {""};
    ret = wamr_run_cp(aha_compress_wasm, aha_compress_wasm_len, app_argc_aha_compress, app_argv_aha_compress);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for aha_mont64
    printf("iwasm_initilised_aha_mont64: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_aha_mont64 = 0;
    const char *app_argv_aha_mont64[] = {""};
    ret = wamr_run_cp(aha_mont64_wasm, aha_mont64_wasm_len, app_argc_aha_mont64, app_argv_aha_mont64);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for bs
    printf("iwasm_initilised_bs: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_bs = 0;
    const char *app_argv_bs[] = {""};
    ret = wamr_run_cp(bs_wasm, bs_wasm_len, app_argc_bs, app_argv_bs);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for bubblesort
    printf("iwasm_initilised_bubblesort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_bubblesort = 0;
    const char *app_argv_bubblesort[] = {""};
    ret = wamr_run_cp(bubblesort_wasm, bubblesort_wasm_len, app_argc_bubblesort, app_argv_bubblesort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for cnt
    printf("iwasm_initilised_cnt: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_cnt = 0;
    const char *app_argv_cnt[] = {""};
    ret = wamr_run_cp(cnt_wasm, cnt_wasm_len, app_argc_cnt, app_argv_cnt);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for compress
    printf("iwasm_initilised_compress: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_compress = 0;
    const char *app_argv_compress[] = {""};
    ret = wamr_run_cp(compress_wasm, compress_wasm_len, app_argc_compress, app_argv_compress);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for cover
    printf("iwasm_initilised_cover: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_cover = 0;
    const char *app_argv_cover[] = {""};
    ret = wamr_run_cp(cover_wasm, cover_wasm_len, app_argc_cover, app_argv_cover);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for crc32
    printf("iwasm_initilised_crc32: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_crc32 = 0;
    const char *app_argv_crc32[] = {""};
    ret = wamr_run_cp(crc32_wasm, crc32_wasm_len, app_argc_crc32, app_argv_crc32);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for crc
    printf("iwasm_initilised_crc: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_crc = 0;
    const char *app_argv_crc[] = {""};
    ret = wamr_run_cp(crc_wasm, crc_wasm_len, app_argc_crc, app_argv_crc);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

     // Test for ctl_stack
    printf("iwasm_initilised_ctl_stack: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ctl_stack = 0;
    const char *app_argv_ctl_stack[] = {""};
    ret = wamr_run_cp(ctl_stack_wasm, ctl_stack_wasm_len, app_argc_ctl_stack, app_argv_ctl_stack);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();


    // Test for ctl_string
    printf("iwasm_initilised_ctl_string: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ctl_string = 0;
    const char *app_argv_ctl_string[] = {""};
    ret = wamr_run_cp(ctl_string_wasm, ctl_string_wasm_len, app_argc_ctl_string, app_argv_ctl_string);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for ctl_vector
    printf("iwasm_initilised_ctl_vector: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ctl_vector = 0;
    const char *app_argv_ctl_vector[] = {""};
    ret = wamr_run_cp(ctl_vector_wasm, ctl_vector_wasm_len, app_argc_ctl_vector, app_argv_ctl_vector);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for cubic
    /*printf("iwasm_initilised_cubic: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_cubic = 0;
    const char *app_argv_cubic[] = {""};
    ret = wamr_run_cp(cubic_wasm, cubic_wasm_len, app_argc_cubic, app_argv_cubic);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for dijkstra
    /*printf("iwasm_initilised_dijkstra: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_dijkstra = 0;
    const char *app_argv_dijkstra[] = {""};
    ret = wamr_run_cp(dijkstra_wasm, dijkstra_wasm_len, app_argc_dijkstra, app_argv_dijkstra);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for dtoa
    printf("iwasm_initilised_dtoa: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_dtoa = 0;
    const char *app_argv_dtoa[] = {""};
    ret = wamr_run_cp(dtoa_wasm, dtoa_wasm_len, app_argc_dtoa, app_argv_dtoa);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for duff
    printf("iwasm_initilised_duff: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_duff = 0;
    const char *app_argv_duff[] = {""};
    ret = wamr_run_cp(duff_wasm, duff_wasm_len, app_argc_duff, app_argv_duff);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for edn
    printf("iwasm_initilised_edn: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_edn = 0;
    const char *app_argv_edn[] = {""};
    ret = wamr_run_cp(edn_wasm, edn_wasm_len, app_argc_edn, app_argv_edn);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for expint
    printf("iwasm_initilised_expint: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_expint = 0;
    const char *app_argv_expint[] = {""};
    ret = wamr_run_cp(expint_wasm, expint_wasm_len, app_argc_expint, app_argv_expint);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for fac
    printf("iwasm_initilised_fac: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_fac = 0;
    const char *app_argv_fac[] = {""};
    ret = wamr_run_cp(fac_wasm, fac_wasm_len, app_argc_fac, app_argv_fac);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for fasta
    printf("iwasm_initilised_fasta: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_fasta = 0;
    const char *app_argv_fasta[] = {""};
    ret = wamr_run_cp(fasta_wasm, fasta_wasm_len, app_argc_fasta, app_argv_fasta);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for fdct
    printf("iwasm_initilised_fdct: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_fdct = 0;
    const char *app_argv_fdct[] = {""};
    ret = wamr_run_cp(fdct_wasm, fdct_wasm_len, app_argc_fdct, app_argv_fdct);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for fibcall
    printf("iwasm_initilised_fibcall: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_fibcall = 0;
    const char *app_argv_fibcall[] = {""};
    ret = wamr_run_cp(fibcall_wasm, fibcall_wasm_len, app_argc_fibcall, app_argv_fibcall);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for fir
    printf("iwasm_initilised_fir: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_fir = 0;
    const char *app_argv_fir[] = {""};
    ret = wamr_run_cp(fir_wasm, fir_wasm_len, app_argc_fir, app_argv_fir);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for frac
    printf("iwasm_initilised_frac: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_frac = 0;
    const char *app_argv_frac[] = {""};
    ret = wamr_run_cp(frac_wasm, frac_wasm_len, app_argc_frac, app_argv_frac);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for huffbench
    printf("iwasm_initilised_huffbench: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_huffbench = 0;
    const char *app_argv_huffbench[] = {""};
    ret = wamr_run_cp(huffbench_wasm, huffbench_wasm_len, app_argc_huffbench, app_argv_huffbench);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for insertsort
    printf("iwasm_initilised_insertsort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_insertsort = 0;
    const char *app_argv_insertsort[] = {""};
    ret = wamr_run_cp(insertsort_wasm, insertsort_wasm_len, app_argc_insertsort, app_argv_insertsort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for janne_complex
    printf("iwasm_initilised_janne_complex: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_janne_complex = 0;
    const char *app_argv_janne_complex[] = {""};
    ret = wamr_run_cp(janne_complex_wasm, janne_complex_wasm_len, app_argc_janne_complex, app_argv_janne_complex);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for jfdctint
    printf("iwasm_initilised_jfdctint: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_jfdctint = 0;
    const char *app_argv_jfdctint[] = {""};
    ret = wamr_run_cp(jfdctint_wasm, jfdctint_wasm_len, app_argc_jfdctint, app_argv_jfdctint);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for lcdnum
    printf("iwasm_initilised_lcdnum: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_lcdnum = 0;
    const char *app_argv_lcdnum[] = {""};
    ret = wamr_run_cp(lcdnum_wasm, lcdnum_wasm_len, app_argc_lcdnum, app_argv_lcdnum);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for levenshtein
    printf("iwasm_initilised_levenshtein: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_levenshtein = 0;
    const char *app_argv_levenshtein[] = {""};
    ret = wamr_run_cp(levenshtein_wasm, levenshtein_wasm_len, app_argc_levenshtein, app_argv_levenshtein);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for ludcmp
    printf("iwasm_initilised_ludcmp: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ludcmp = 0;
    const char *app_argv_ludcmp[] = {""};
    ret = wamr_run_cp(ludcmp_wasm, ludcmp_wasm_len, app_argc_ludcmp, app_argv_ludcmp);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for matmult_float
    printf("iwasm_initilised_matmult_float: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_matmult_float = 0;
    const char *app_argv_matmult_float[] = {""};
    ret = wamr_run_cp(matmult_float_wasm, matmult_float_wasm_len, app_argc_matmult_float, app_argv_matmult_float);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for matmult_int
    printf("iwasm_initilised_matmult_int: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_matmult_int = 0;
    const char *app_argv_matmult_int[] = {""};
    ret = wamr_run_cp(matmult_int_wasm, matmult_int_wasm_len, app_argc_matmult_int, app_argv_matmult_int);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for mergesort
    /*printf("iwasm_initilised_mergesort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_mergesort = 0;
    const char *app_argv_mergesort[] = {""};
    ret = wamr_run_cp(mergesort_wasm, mergesort_wasm_len, app_argc_mergesort, app_argv_mergesort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for miniz
    /*printf("iwasm_initilised_miniz: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_miniz = 0;
    const char *app_argv_miniz[] = {""};
    ret = wamr_run_cp(miniz_wasm, miniz_wasm_len, app_argc_miniz, app_argv_miniz);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for minver
    printf("iwasm_initilised_minver: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_minver = 0;
    const char *app_argv_minver[] = {""};
    ret = wamr_run_cp(minver_wasm, minver_wasm_len, app_argc_minver, app_argv_minver);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nbody
    printf("iwasm_initilised_nbody: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nbody = 0;
    const char *app_argv_nbody[] = {""};
    ret = wamr_run_cp(nbody_wasm, nbody_wasm_len, app_argc_nbody, app_argv_nbody);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for ndes
    printf("iwasm_initilised_ndes: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ndes = 0;
    const char *app_argv_ndes[] = {""};
    ret = wamr_run_cp(ndes_wasm, ndes_wasm_len, app_argc_ndes, app_argv_ndes);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nettle_aes
    /*printf("iwasm_initilised_nettle_aes: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_aes = 0;
    const char *app_argv_nettle_aes[] = {""};
    ret = wamr_run_cp(nettle_aes_wasm, nettle_aes_wasm_len, app_argc_nettle_aes, app_argv_nettle_aes);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for nettle_arcfour
    printf("iwasm_initilised_nettle_arcfour: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_arcfour = 0;
    const char *app_argv_nettle_arcfour[] = {""};
    ret = wamr_run_cp(nettle_arcfour_wasm, nettle_arcfour_wasm_len, app_argc_nettle_arcfour, app_argv_nettle_arcfour);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nettle_cast128
    printf("iwasm_initilised_nettle_cast128: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_cast128 = 0;
    const char *app_argv_nettle_cast128[] = {""};
    ret = wamr_run_cp(nettle_cast128_wasm, nettle_cast128_wasm_len, app_argc_nettle_cast128, app_argv_nettle_cast128);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nettle_des
    printf("iwasm_initilised_nettle_des: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_des = 0;
    const char *app_argv_nettle_des[] = {""};
    ret = wamr_run_cp(nettle_des_wasm, nettle_des_wasm_len, app_argc_nettle_des, app_argv_nettle_des);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nettle_md5
    printf("iwasm_initilised_nettle_md5: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_md5 = 0;
    const char *app_argv_nettle_md5[] = {""};
    ret = wamr_run_cp(nettle_md5_wasm, nettle_md5_wasm_len, app_argc_nettle_md5, app_argv_nettle_md5);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nettle_sha256
    /*printf("iwasm_initilised_nettle_sha256: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nettle_sha256 = 0;
    const char *app_argv_nettle_sha256[] = {""};
    ret = wamr_run_cp(nettle_sha256_wasm, nettle_sha256_wasm_len, app_argc_nettle_sha256, app_argv_nettle_sha256);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for newlib_exp
    printf("iwasm_initilised_newlib_exp: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_newlib_exp = 0;
    const char *app_argv_newlib_exp[] = {""};
    ret = wamr_run_cp(newlib_exp_wasm, newlib_exp_wasm_len, app_argc_newlib_exp, app_argv_newlib_exp);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for newlib_log
    printf("iwasm_initilised_newlib_log: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_newlib_log = 0;
    const char *app_argv_newlib_log[] = {""};
    ret = wamr_run_cp(newlib_log_wasm, newlib_log_wasm_len, app_argc_newlib_log, app_argv_newlib_log);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for newlib_mod
    printf("iwasm_initilised_newlib_mod: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_newlib_mod = 0;
    const char *app_argv_newlib_mod[] = {""};
    ret = wamr_run_cp(newlib_mod_wasm, newlib_mod_wasm_len, app_argc_newlib_mod, app_argv_newlib_mod);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for newlib_sqrt
    printf("iwasm_initilised_newlib_sqrt: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_newlib_sqrt = 0;
    const char *app_argv_newlib_sqrt[] = {""};
    ret = wamr_run_cp(newlib_sqrt_wasm, newlib_sqrt_wasm_len, app_argc_newlib_sqrt, app_argv_newlib_sqrt);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for nsichneu
    printf("iwasm_initilised_nsichneu: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_nsichneu = 0;
    const char *app_argv_nsichneu[] = {""};
    ret = wamr_run_cp(nsichneu_wasm, nsichneu_wasm_len, app_argc_nsichneu, app_argv_nsichneu);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for ns
    printf("iwasm_initilised_ns: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ns = 0;
    const char *app_argv_ns[] = {""};
    ret = wamr_run_cp(ns_wasm, ns_wasm_len, app_argc_ns, app_argv_ns);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for picojpeg
    /*printf("iwasm_initilised_picojpeg: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_picojpeg = 0;
    const char *app_argv_picojpeg[] = {""};
    ret = wamr_run_cp(picojpeg_wasm, picojpeg_wasm_len, app_argc_picojpeg, app_argv_picojpeg);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for prime
    printf("iwasm_initilised_prime: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_prime = 0;
    const char *app_argv_prime[] = {""};
    ret = wamr_run_cp(prime_wasm, prime_wasm_len, app_argc_prime, app_argv_prime);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for qrduino
    printf("iwasm_initilised_qrduino: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_qrduino = 0;
    const char *app_argv_qrduino[] = {""};
    ret = wamr_run_cp(qrduino_wasm, qrduino_wasm_len, app_argc_qrduino, app_argv_qrduino);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for qsort
    printf("iwasm_initilised_qsort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_qsort = 0;
    const char *app_argv_qsort[] = {""};
    ret = wamr_run_cp(qsort_wasm, qsort_wasm_len, app_argc_qsort, app_argv_qsort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for qurt
    printf("iwasm_initilised_qurt: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_qurt = 0;
    const char *app_argv_qurt[] = {""};
    ret = wamr_run_cp(qurt_wasm, qurt_wasm_len, app_argc_qurt, app_argv_qurt);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for recursion
    printf("iwasm_initilised_recursion: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_recursion = 0;
    const char *app_argv_recursion[] = {""};
    ret = wamr_run_cp(recursion_wasm, recursion_wasm_len, app_argc_recursion, app_argv_recursion);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for rijndael
    printf("iwasm_initilised_rijndael: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_rijndael = 0;
    const char *app_argv_rijndael[] = {""};
    ret = wamr_run_cp(rijndael_wasm, rijndael_wasm_len, app_argc_rijndael, app_argv_rijndael);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for select
    printf("iwasm_initilised_select: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_select = 0;
    const char *app_argv_select[] = {""};
    ret = wamr_run_cp(select_wasm, select_wasm_len, app_argc_select, app_argv_select);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_arraybinsearch
    printf("iwasm_initilised_sglib_arraybinsearch: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_arraybinsearch = 0;
    const char *app_argv_sglib_arraybinsearch[] = {""};
    ret = wamr_run_cp(sglib_arraybinsearch_wasm, sglib_arraybinsearch_wasm_len, app_argc_sglib_arraybinsearch, app_argv_sglib_arraybinsearch);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_arrayheapsort
    printf("iwasm_initilised_sglib_arrayheapsort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_arrayheapsort = 0;
    const char *app_argv_sglib_arrayheapsort[] = {""};
    ret = wamr_run_cp(sglib_arrayheapsort_wasm, sglib_arrayheapsort_wasm_len, app_argc_sglib_arrayheapsort, app_argv_sglib_arrayheapsort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_arrayquicksort
    printf("iwasm_initilised_sglib_arrayquicksort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_arrayquicksort = 0;
    const char *app_argv_sglib_arrayquicksort[] = {""};
    ret = wamr_run_cp(sglib_arrayquicksort_wasm, sglib_arrayquicksort_wasm_len, app_argc_sglib_arrayquicksort, app_argv_sglib_arrayquicksort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_dllist
    /*printf("iwasm_initilised_sglib_dllist: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_dllist = 0;
    const char *app_argv_sglib_dllist[] = {""};
    ret = wamr_run_cp(sglib_dllist_wasm, sglib_dllist_wasm_len, app_argc_sglib_dllist, app_argv_sglib_dllist);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for sglib_hashtable
    /*printf("iwasm_initilised_sglib_hashtable: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_hashtable = 0;
    const char *app_argv_sglib_hashtable[] = {""};
    ret = wamr_run_cp(sglib_hashtable_wasm, sglib_hashtable_wasm_len, app_argc_sglib_hashtable, app_argv_sglib_hashtable);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for sglib_listinsertsort
    /*printf("iwasm_initilised_sglib_listinsertsort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_listinsertsort = 0;
    const char *app_argv_sglib_listinsertsort[] = {""};
    ret = wamr_run_cp(sglib_listinsertsort_wasm, sglib_listinsertsort_wasm_len, app_argc_sglib_listinsertsort, app_argv_sglib_listinsertsort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for sglib_listsort
    printf("iwasm_initilised_sglib_listsort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_listsort = 0;
    const char *app_argv_sglib_listsort[] = {""};
    ret = wamr_run_cp(sglib_listsort_wasm, sglib_listsort_wasm_len, app_argc_sglib_listsort, app_argv_sglib_listsort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_queue
    printf("iwasm_initilised_sglib_queue: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_queue = 0;
    const char *app_argv_sglib_queue[] = {""};
    ret = wamr_run_cp(sglib_queue_wasm, sglib_queue_wasm_len, app_argc_sglib_queue, app_argv_sglib_queue);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sglib_rbtree
    /*printf("iwasm_initilised_sglib_rbtree: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sglib_rbtree = 0;
    const char *app_argv_sglib_rbtree[] = {""};
    ret = wamr_run_cp(sglib_rbtree_wasm, sglib_rbtree_wasm_len, app_argc_sglib_rbtree, app_argv_sglib_rbtree);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for slre
    printf("iwasm_initilised_slre: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_slre = 0;
    const char *app_argv_slre[] = {""};
    ret = wamr_run_cp(slre_wasm, slre_wasm_len, app_argc_slre, app_argv_slre);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for sqrt
    printf("iwasm_initilised_sqrt: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_sqrt = 0;
    const char *app_argv_sqrt[] = {""};
    ret = wamr_run_cp(sqrt_wasm, sqrt_wasm_len, app_argc_sqrt, app_argv_sqrt);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for statemate
    printf("iwasm_initilised_statemate: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_statemate = 0;
    const char *app_argv_statemate[] = {""};
    ret = wamr_run_cp(statemate_wasm, statemate_wasm_len, app_argc_statemate, app_argv_statemate);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for stb_perlin
    printf("iwasm_initilised_stb_perlin: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_stb_perlin = 0;
    const char *app_argv_stb_perlin[] = {""};
    ret = wamr_run_cp(stb_perlin_wasm, stb_perlin_wasm_len, app_argc_stb_perlin, app_argv_stb_perlin);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for stringsearch1
    /*printf("iwasm_initilised_stringsearch1: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_stringsearch1 = 0;
    const char *app_argv_stringsearch1[] = {""};
    ret = wamr_run_cp(stringsearch1_wasm, stringsearch1_wasm_len, app_argc_stringsearch1, app_argv_stringsearch1);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for strstr
    printf("iwasm_initilised_strstr: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_strstr = 0;
    const char *app_argv_strstr[] = {""};
    ret = wamr_run_cp(strstr_wasm, strstr_wasm_len, app_argc_strstr, app_argv_strstr);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for st
    printf("iwasm_initilised_st: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_st = 0;
    const char *app_argv_st[] = {""};
    ret = wamr_run_cp(st_wasm, st_wasm_len, app_argc_st, app_argv_st);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for tarai
    printf("iwasm_initilised_tarai: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_tarai = 0;
    const char *app_argv_tarai[] = {""};
    ret = wamr_run_cp(tarai_wasm, tarai_wasm_len, app_argc_tarai, app_argv_tarai);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for template
    printf("iwasm_initilised_template: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_template = 0;
    const char *app_argv_template[] = {""};
    ret = wamr_run_cp(template_wasm, template_wasm_len, app_argc_template, app_argv_template);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for trio_snprintf
    /*printf("iwasm_initilised_trio_snprintf: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_trio_snprintf = 0;
    const char *app_argv_trio_snprintf[] = {""};
    ret = wamr_run_cp(trio_snprintf_wasm, trio_snprintf_wasm_len, app_argc_trio_snprintf, app_argv_trio_snprintf);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/


    // Test for ud
    printf("iwasm_initilised_ud: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_ud = 0;
    const char *app_argv_ud[] = {""};
    ret = wamr_run_cp(ud_wasm, ud_wasm_len, app_argc_ud, app_argv_ud);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

    // Test for whetstone
    /*printf("iwasm_initilised_whetstone: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_whetstone = 0;
    const char *app_argv_whetstone[] = {""};
    ret = wamr_run_cp(whetstone_wasm, whetstone_wasm_len, app_argc_whetstone, app_argv_whetstone);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

    // Test for wikisort
    /*printf("iwasm_initilised_wikisort: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_wikisort = 0;
    const char *app_argv_wikisort[] = {""};
    ret = wamr_run_cp(wikisort_wasm, wikisort_wasm_len, app_argc_wikisort, app_argv_wikisort);
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();*/

     return 0;
 
 }
