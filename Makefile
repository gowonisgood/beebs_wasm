APPLICATION = wasm-example
# If no BOARD is defined in the environment, use this default:
BOARD ?= native

# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/../..

USEPKG += wamr

ifeq (,$(filter native native64,$(BOARD)))
CFLAGS += -DTHREAD_STACKSIZE_MAIN='(6 * 1024)'
CFLAGS += -DISR_STACKSIZE=1024
CFLAGS += -DWAMR_BUILD_MEMORY_CHECK=0
endif

export WAMR_CONFIG := $(abspath config.cmake)

BLOBS +=  $(wildcard *.wasm)

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

.PHONY: update-wamr #what is this

WAMR_DIR = $(RIOTBASE)/../wamr_modified/wasm-micro-runtime

all: update-wamr $(BLOBS)

# libbs.wasm: wasm_sample/libbs.c wasm_sample/Makefile
# 	make -C wasm_sample libbs.wasm
# 	mv wasm_sample/libbs.wasm .

# libjanne_complex.wasm: wasm_sample/libjanne_complex.c wasm_sample/Makefile
# 	make -C wasm_sample libjanne_complex.wasm
# 	mv wasm_sample/libjanne_complex.wasm .

# compress_test.wasm: wasm_sample/compress_test.c wasm_sample/Makefile
# 	make -C wasm_sample compress_test.wasm
# 	mv wasm_sample/compress_test.wasm .

# #mont64.wasm: wasm_sample/mont64.c wasm_sample/Makefile
# #        make -C wasm_sample mont64.wasm
# #        mv wasm_sample/mont64.wasm .

# libbubblesort.wasm: wasm_sample/libbubblesort.c wasm_sample/Makefile
# 	make -C wasm_sample libbubblesort.wasm
# 	mv wasm_sample/libbubblesort.wasm .

# libcompress.wasm: wasm_sample/libcompress.c wasm_sample/Makefile
# 	make -C wasm_sample libcompress.wasm
# 	mv wasm_sample/libcompress.wasm .

# libcrc.wasm: wasm_sample/libcrc.c wasm_sample/Makefile
# 	make -C wasm_sample libcrc.wasm
# 	mv wasm_sample/libcrc.wasm .

# libns.wasm: wasm_sample/libns.c wasm_sample/Makefile
# 	make -C wasm_sample libns.wasm
# 	mv wasm_sample/libns.wasm .

# aes.wasm: wasm_sample/aes.c wasm_sample/Makefile
# 	make -C wasm_sample aes.wasm
# 	mv wasm_sample/aes.wasm .

# #aesxam.wasm: wasm_sample/aesxam.c wasm_sample/Makefile
# #	make -C wasm_sample aesxam.wasm
# #	mv wasm_sample/aesxam.wasm .

# #arcfour.wasm: wasm_sample/arcfour.c wasm_sample/Makefile
# #	make -C wasm_sample arcfour.wasm
# #	mv wasm_sample/arcfour.wasm .

# arraybinsearch.wasm: wasm_sample/arraybinsearch.c wasm_sample/Makefile
# 	make -C wasm_sample arraybinsearch.wasm
# 	mv wasm_sample/arraybinsearch.wasm .

# arraysort.wasm: wasm_sample/arraysort.c wasm_sample/Makefile
# 	make -C wasm_sample arraysort.wasm
# 	mv wasm_sample/arraysort.wasm .

# basicmath_small.wasm: wasm_sample/basicmath_small.c wasm_sample/Makefile
# 	make -C wasm_sample basicmath_small.wasm
# 	mv wasm_sample/basicmath_small.wasm .

# cast128.wasm: wasm_sample/cast128.c wasm_sample/Makefile
# 	make -C wasm_sample cast128.wasm
# 	mv wasm_sample/cast128.wasm .

# cnt.wasm: wasm_sample/cnt.c wasm_sample/Makefile
# 	make -C wasm_sample cnt.wasm
# 	mv wasm_sample/cnt.wasm .

# crc_32.wasm: wasm_sample/crc_32.c wasm_sample/Makefile
# 	make -C wasm_sample crc_32.wasm
# 	mv wasm_sample/crc_32.wasm .

# #ctl.wasm: wasm_sample/ctl.c wasm_sample/Makefile
# #	make -C wasm_sample ctl.wasm
# #	mv wasm_sample/ctl.wasm .

# des.wasm: wasm_sample/des.c wasm_sample/Makefile
# 	make -C wasm_sample des.wasm
# 	mv wasm_sample/des.wasm .

# dijkstra_small.wasm: wasm_sample/dijkstra_small.c wasm_sample/Makefile
# 	make -C wasm_sample dijkstra_small.wasm
# 	mv wasm_sample/dijkstra_small.wasm .

# dllist.wasm: wasm_sample/dllist.c wasm_sample/Makefile
# 	make -C wasm_sample dllist.wasm
# 	mv wasm_sample/dllist.wasm .

# ef_exp.wasm: wasm_sample/ef_exp.c wasm_sample/Makefile
# 	make -C wasm_sample ef_exp.wasm
# 	mv wasm_sample/ef_exp.wasm .

# ef_log.wasm: wasm_sample/ef_log.c wasm_sample/Makefile
# 	make -C wasm_sample ef_log.wasm
# 	mv wasm_sample/ef_log.wasm .

# ef_mod.wasm: wasm_sample/ef_mod.c wasm_sample/Makefile
# 	make -C wasm_sample ef_mod.wasm
# 	mv wasm_sample/ef_mod.wasm .

# ef_sqrt.wasm: wasm_sample/ef_sqrt.c wasm_sample/Makefile
# 	make -C wasm_sample ef_sqrt.wasm
# 	mv wasm_sample/ef_sqrt.wasm .

# fast_fwd_inc.wasm: wasm_sample/fast_fwd_inc.c wasm_sample/Makefile
# 	make -C wasm_sample fast_fwd_inc.wasm
# 	mv wasm_sample/fast_fwd_inc.wasm .

# fast_rev_d12.wasm: wasm_sample/fast_rev_d12.c wasm_sample/Makefile
# 	make -C wasm_sample fast_rev_d12.wasm
# 	mv wasm_sample/fast_rev_d12.wasm .

# hashtable.wasm: wasm_sample/hashtable.c wasm_sample/Makefile
# 	make -C wasm_sample hashtable.wasm
# 	mv wasm_sample/hashtable.wasm .

# #libcubic.wasm: wasm_sample/libcubic.c wasm_sample/Makefile
# #	make -C wasm_sample libcubic.wasm
# #	mv wasm_sample/libcubic.wasm .

# libdtoa.wasm: wasm_sample/libdtoa.c wasm_sample/Makefile
# 	make -C wasm_sample libdtoa.wasm
# 	mv wasm_sample/libdtoa.wasm .

# libduff.wasm: wasm_sample/libduff.c wasm_sample/Makefile
# 	make -C wasm_sample libduff.wasm
# 	mv wasm_sample/libduff.wasm .

# libedn.wasm: wasm_sample/libedn.c wasm_sample/Makefile
# 	make -C wasm_sample libedn.wasm
# 	mv wasm_sample/libedn.wasm .

# libexpint.wasm: wasm_sample/libexpint.c wasm_sample/Makefile
# 	make -C wasm_sample libexpint.wasm
# 	mv wasm_sample/libexpint.wasm .

# libfac.wasm: wasm_sample/libfac.c wasm_sample/Makefile
# 	make -C wasm_sample libfac.wasm
# 	mv wasm_sample/libfac.wasm .

# libfasta.wasm: wasm_sample/libfasta.c wasm_sample/Makefile
# 	make -C wasm_sample libfasta.wasm
# 	mv wasm_sample/libfasta.wasm .

# libfdct.wasm: wasm_sample/libfdct.c wasm_sample/Makefile
# 	make -C wasm_sample libfdct.wasm
# 	mv wasm_sample/libfdct.wasm .

# libfibcall.wasm: wasm_sample/libfibcall.c wasm_sample/Makefile
# 	make -C wasm_sample libfibcall.wasm
# 	mv wasm_sample/libfibcall.wasm .

# libfir.wasm: wasm_sample/libfir.c wasm_sample/Makefile
# 	make -C wasm_sample libfir.wasm
# 	mv wasm_sample/libfir.wasm .

# libfrac.wasm: wasm_sample/libfrac.c wasm_sample/Makefile
# 	make -C wasm_sample libfrac.wasm
# 	mv wasm_sample/libfrac.wasm .

# libhuffbench.wasm: wasm_sample/libhuffbench.c wasm_sample/Makefile	
# 	make -C wasm_sample libhuffbench.wasm
# 	mv wasm_sample/libhuffbench.wasm .

# libinsertsort.wasm: wasm_sample/libinsertsort.c wasm_sample/Makefile
# 	make -C wasm_sample libinsertsort.wasm
# 	mv wasm_sample/libinsertsort.wasm .

# libjfdctint.wasm: wasm_sample/libjfdctint.c wasm_sample/Makefile
# 	make -C wasm_sample libjfdctint.wasm
# 	mv wasm_sample/libjfdctint.wasm .

# liblcdnum.wasm: wasm_sample/liblcdnum.c wasm_sample/Makefile
# 	make -C wasm_sample liblcdnum.wasm
# 	mv wasm_sample/liblcdnum.wasm .

# liblevenshtein.wasm: wasm_sample/liblevenshtein.c wasm_sample/Makefile	
# 	make -C wasm_sample liblevenshtein.wasm
# 	mv wasm_sample/liblevenshtein.wasm .

# libludcmp.wasm: wasm_sample/libludcmp.c wasm_sample/Makefile
# 	make -C wasm_sample libludcmp.wasm
# 	mv wasm_sample/libludcmp.wasm .

# libmergesort.wasm: wasm_sample/libmergesort.c wasm_sample/Makefile
# 	make -C wasm_sample libmergesort.wasm
# 	mv wasm_sample/libmergesort.wasm .

# libminver.wasm: wasm_sample/libminver.c wasm_sample/Makefile
# 	make -C wasm_sample libminver.wasm
# 	mv wasm_sample/libminver.wasm .

# libndes.wasm: wasm_sample/libndes.c wasm_sample/Makefile
# 	make -C wasm_sample libndes.wasm
# 	mv wasm_sample/libndes.wasm .

# libnsichneu.wasm: wasm_sample/libnsichneu.c wasm_sample/Makefile
# 	make -C wasm_sample libnsichneu.wasm
# 	mv wasm_sample/libnsichneu.wasm .

# libpicojpeg.wasm: wasm_sample/libpicojpeg.c wasm_sample/Makefile
# 	make -C wasm_sample libpicojpeg.wasm
# 	mv wasm_sample/libpicojpeg.wasm .

# libprime.wasm: wasm_sample/libprime.c wasm_sample/Makefile
# 	make -C wasm_sample libprime.wasm
# 	mv wasm_sample/libprime.wasm .

# libqsort.wasm: wasm_sample/libqsort.c wasm_sample/Makefile
# 	make -C wasm_sample libqsort.wasm
# 	mv wasm_sample/libqsort.wasm .

# libqurt.wasm: wasm_sample/libqurt.c wasm_sample/Makefile
# 	make -C wasm_sample libqurt.wasm
# 	mv wasm_sample/libqurt.wasm .

# librecursion.wasm: wasm_sample/librecursion.c wasm_sample/Makefile
# 	make -C wasm_sample librecursion.wasm	
# 	mv wasm_sample/librecursion.wasm .

# libselect.wasm: wasm_sample/libselect.c wasm_sample/Makefile
# 	make -C wasm_sample libselect.wasm
# 	mv wasm_sample/libselect.wasm .

# libslre.wasm: wasm_sample/libslre.c wasm_sample/Makefile
# 	make -C wasm_sample libslre.wasm
# 	mv wasm_sample/libslre.wasm .

# libsqrt.wasm: wasm_sample/libsqrt.c wasm_sample/Makefile
# 	make -C wasm_sample libsqrt.wasm
# 	mv wasm_sample/libsqrt.wasm .

# libst.wasm: wasm_sample/libst.c wasm_sample/Makefile
# 	make -C wasm_sample libst.wasm
# 	mv wasm_sample/libst.wasm .

# libstb_perlin.wasm: wasm_sample/libstb_perlin.c wasm_sample/Makefile
# 	make -C wasm_sample libstb_perlin.wasm
# 	mv wasm_sample/libstb_perlin.wasm .

# libstatemate.wasm: wasm_sample/libstatemate.c wasm_sample/Makefile
# 	make -C wasm_sample libstatemate.wasm
# 	mv wasm_sample/libstatemate.wasm .

# libstrstr.wasm: wasm_sample/libstrstr.c wasm_sample/Makefile
# 	make -C wasm_sample libstrstr.wasm
# 	mv wasm_sample/libstrstr.wasm .

# libtarai.wasm: wasm_sample/libtarai.c wasm_sample/Makefile
# 	make -C wasm_sample libtarai.wasm
# 	mv wasm_sample/libtarai.wasm .

# libtemplate.wasm: wasm_sample/libtemplate.c wasm_sample/Makefile
# 	make -C wasm_sample libtemplate.wasm
# 	mv wasm_sample/libtemplate.wasm .

# libud.wasm: wasm_sample/libud.c wasm_sample/Makefile
# 	make -C wasm_sample libud.wasm
# 	mv wasm_sample/libud.wasm .

# libwhetstone.wasm: wasm_sample/libwhetstone.c wasm_sample/Makefile
# 	make -C wasm_sample libwhetstone.wasm
# 	mv wasm_sample/libwhetstone.wasm .

# libwikisort.wasm: wasm_sample/libwikisort.c wasm_sample/Makefile
# 	make -C wasm_sample libwikisort.wasm
# 	mv wasm_sample/libwikisort.wasm .

# listinsertsort.wasm: wasm_sample/listinsertsort.c wasm_sample/Makefile
# 	make -C wasm_sample listinsertsort.wasm
# 	mv wasm_sample/listinsertsort.wasm .

# listsort.wasm: wasm_sample/listsort.c wasm_sample/Makefile
# 	make -C wasm_sample listsort.wasm
# 	mv wasm_sample/listsort.wasm .

# #matmult.wasm: wasm_sample/matmult.c wasm_sample/Makefile
# #	make -C wasm_sample matmult.wasm
# #	mv wasm_sample/matmult.wasm .

# md5.wasm: wasm_sample/md5.c wasm_sample/Makefile
# 	make -C wasm_sample md5.wasm
# 	mv wasm_sample/md5.wasm .

# miniz_b.wasm: wasm_sample/miniz_b.c wasm_sample/Makefile
# 	make -C wasm_sample miniz_b.wasm
# 	mv wasm_sample/miniz_b.wasm .

# miniz.wasm: wasm_sample/miniz.c wasm_sample/Makefile
# 	make -C wasm_sample miniz.wasm
# 	mv wasm_sample/miniz.wasm .

# nbody.wasm: wasm_sample/nbody.c wasm_sample/Makefile
# 	make -C wasm_sample nbody.wasm
# 	mv wasm_sample/nbody.wasm .

# nettle-aes.wasm: wasm_sample/nettle-aes.c wasm_sample/Makefile
# 	make -C wasm_sample nettle-aes.wasm
# 	mv wasm_sample/nettle-aes.wasm .

# nettle-sha256.wasm: wasm_sample/nettle-sha256.c wasm_sample/Makefile
# 	make -C wasm_sample nettle-sha256.wasm
# 	mv wasm_sample/nettle-sha256.wasm .

# picojpeg_test.wasm: wasm_sample/picojpeg_test.c wasm_sample/Makefile
# 	make -C wasm_sample picojpeg_test.wasm
# 	mv wasm_sample/picojpeg_test.wasm .

# qrencode.wasm: wasm_sample/qrencode.c wasm_sample/Makefile
# 	make -C wasm_sample qrencode.wasm
# 	mv wasm_sample/qrencode.wasm .

# qrframe.wasm: wasm_sample/qrframe.c wasm_sample/Makefile
# 	make -C wasm_sample qrframe.wasm
# 	mv wasm_sample/qrframe.wasm .

# qrtest.wasm: wasm_sample/qrtest.c wasm_sample/Makefile
# 	make -C wasm_sample qrtest.wasm
# 	mv wasm_sample/qrtest.wasm .

# #queue.wasm: wasm_sample/queue.c wasm_sample/Makefile
# #	make -C wasm_sample queue.wasm
# #	mv wasm_sample/queue.wasm .

# rbtree.wasm: wasm_sample/rbtree.c wasm_sample/Makefile
# 	make -C wasm_sample rbtree.wasm
# 	mv wasm_sample/rbtree.wasm .

# string.wasm: wasm_sample/string.c wasm_sample/Makefile
# 	make -C wasm_sample string.wasm
# 	mv wasm_sample/string.wasm .

# stringsearch1.wasm: wasm_sample/stringsearch1.c wasm_sample/Makefile
# 	make -C wasm_sample stringsearch1.wasm
# 	mv wasm_sample/stringsearch1.wasm .

# #trio.wasm: wasm_sample/trio.c wasm_sample/Makefile
# #	make -C wasm_sample trio.wasm
# #	mv wasm_sample/trio.wasm .

# #triostr.wasm: wasm_sample/triostr.c wasm_sample/Makefile
# #	make -C wasm_sample triostr.wasm
# #	mv wasm_sample/triostr.wasm .

# #trio_test.wasm: wasm_sample/trio_test.c wasm_sample/Makefile
# #	make -C wasm_sample trio_test.wasm
# #	mv wasm_sample/trio_test.wasm .

# #######################################################
# # Load the rest of the usual RIOT make infrastructure #
# #######################################################

include $(RIOTBASE)/Makefile.include

