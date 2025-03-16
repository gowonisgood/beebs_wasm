#sometimes there might not be a wasm-ld (Ubuntu:focal)
#lets check if we can find a specific version

#this is a kind of crazy which from
#https://www.gnu.org/software/make/manual/html_node/Call-Function.html#Call-Function
#see https://github.com/RIOT-OS/RIOT/pull/16806 and /16807 and /16776 for why
search_fn = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
#INCLUDE_DIR ?= /opt/wasi-sdk/share/wasi-sysroot/include

ifneq ($(call search_fn,wasm-ld),)
  WASM-LD ?= wasm-ld
  else
    ifneq ($(call search_fn,wasm-ld-11),)
    LLVM_VERSION := 11
    else
      ifneq ($(call search_fn,wasm-ld-10),)
      LLVM_VERSION := 10
      else
        ifneq ($(call search_fn,wasm-ld-9),)
        LLVM_VERSION := 9
        else
          ifneq ($(call search_fn,wasm-ld-8),)
          LLVM_VERSION := 8
          endif
      endif
    endif
  endif
endif

ifneq ($(LLVM_VERSION),)
  CLANG ?= clang-$(LLVM_VERSION)
  CLANGPP ?= clang++-$(LLVM_VERSION)
  WASM-LD ?= wasm-ld-$(LLVM_VERSION)
else
  CLANG ?= clang
  CLANGPP ?= clang++
endif

ifeq ($(WASM-LD),)
  WASM-LD ?= echo "!! NO wasm-ld(-VERSION) found !!"; false
  COPY_HELLO := YES
endif

LINK_FLAGS := -z stack-size=8192 \
		--export main \
		--export=__heap_base \
		--export=__data_end \
		--allow-undefined \
		--strip-all \
		--export-dynamic \
		-error-limit=0 \
		--lto-O0 \
		-O0 \
		--gc-sections\
		--initial-memory=65536 \
		--no-entry \
		

# --initial-memory may only be set in 64kB steps (pagesize of WASM)
# even though this one page is 64kB
#	- data starts at 0, (1024 is chosen by lld)
#	- stack starts at 4kB growing down
#	- heap at 4kB growing up (see stack-size option)
#	-> memory can be smaller than first page
# without stack-size option stack will start at 64kB
#	-> heap needs a second page
# wasm-ld 8 and 11 do not need --initial-memory=64kB

COMPILE_FLAGS := -Wall \
		--target=wasm32-wasi \
		-emit-llvm \
		-O0 \
		-flto \
		-fvisibility=hidden \
		-ffunction-sections \
		-fdata-sections \
		--sysroot=/home/gowonisgood/wasi-sdk/build/install/share/wasi-sysroot \
		-I/home/gowonisgood/wasi-sdk/build/share/wasi-sysroot/include/wasm32-wasi \

#--target=wasm32-unknown-unknown-wasm
#one might consider adding these
#		-nostartfiles \
#		--nostdlib \
#		--nostdinc \
#		-std=c++14 \

%.show: %.wasm
	wasm2wat $<

%.wasm: %.o Makefile
	$(WASM-LD) -o $@ $(LINK_FLAGS) $<

#GO
basicmath_small.wasm: basicmath_small.o libcubic.o
	$(WASM-LD) -o $@ $(LINK_FLAGS) basicmath_small.o libcubic.o


%.o: %.cpp Makefile FORCE
	$(CLANGPP) \
		-c \
		$(COMPILE_FLAGS) \
		-o $@ \
		$<

%.o: %.c Makefile FORCE
	$(CLANG)\
		-c \
		$(COMPILE_FLAGS) \
		-o $@ \
		$<

%.wat: %.wasm Makefile
	wasm2wat -o $@ $<

libbs.wasm:

ifeq ($(COPY_HELLO),YES)
libbs.wasm: libbs_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libbs_prebuild.wasm !! "
	cp libbs_prebuild.wasm libbs.wasm
else
libbs_prebuild.wasm: libbs.wasm
	cp libbs.wasm libbs_prebuild.wasm
endif

#GO

libjanne_complex.wasm:

ifeq ($(COPY_HELLO),YES)
libjanne_complex.wasm: libjanne_complex_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libjanne_complex_prebuild.wasm !! "
	cp libjanne_complex_prebuild.wasm libjanne_complex.wasm
else
libjanne_complex_prebuild.wasm: libjanne_complex.wasm
	cp libjanne_complex.wasm libjanne_complex_prebuild.wasm
endif

#GO

compress_test.wasm:

ifeq ($(COPY_HELLO),YES)
compress_test.wasm: compress_test_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying compress_test_prebuild.wasm !! "
	cp compress_test_prebuild.wasm compress_test.wasm
else
compress_test_prebuild.wasm: compress_test.wasm
	cp compress_test.wasm compress_test_prebuild.wasm
endif

#GO

#mont64.wasm:

#ifeq ($(COPY_HELLO),YES)
#mont64.wasm: mont64_prebuild.wasm
#        @echo "!! NO wasm-ld(-VERSION) found  !!"
#        @echo "!! copying mont64_prebuild.wasm !! "
#        cp mont64_prebuild.wasm mont64.wasm
#else
#mont64_prebuild.wasm: mont64.wasm
#       cp mont64.wasm mont64_prebuild.wasm
#endif

#GO

libbubblesort.wasm:

ifeq ($(COPY_HELLO),YES)
libbubblesort.wasm: libbubblesort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libbubblesort_prebuild.wasm !! "
	cp libbubblesort_prebuild.wasm libbubblesort.wasm
else
libbubblesort_prebuild.wasm: libbubblesort.wasm
	cp libbubblesort.wasm libbubblesort_prebuild.wasm
endif

#GO

libcompress.wasm:

ifeq ($(COPY_HELLO),YES)
libcompress.wasm: libcompress_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libcompress_prebuild.wasm !! "
	cp libcompress_prebuild.wasm libcompress.wasm
else
libcompress_prebuild.wasm: libcompress.wasm
	cp libcompress.wasm libcompress_prebuild.wasm
endif

#GO

libcrc.wasm:

ifeq ($(COPY_HELLO),YES)
libcrc.wasm: libcrc_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libcrc_prebuild.wasm !! "
	cp libcrc_prebuild.wasm libcrc.wasm
else
libcrc_prebuild.wasm: libcrc.wasm
	cp libcrc.wasm libcrc_prebuild.wasm
endif

#GO

libns.wasm:

ifeq ($(COPY_HELLO),YES)
libns.wasm: libns_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libns_prebuild.wasm !! "
	cp libns_prebuild.wasm libns.wasm
else
libns_prebuild.wasm: libns.wasm
	cp libns.wasm libns_prebuild.wasm
endif

#GO

aes.wasm:

ifeq ($(COPY_HELLO),YES)
aes.wasm: aes_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying aes_prebuild.wasm !! "
	cp aes_prebuild.wasm aes.wasm
else
aes_prebuild.wasm: aes.wasm
	cp aes.wasm aes_prebuild.wasm
endif

#GO

#aesxam.wasm:

#ifeq ($(COPY_HELLO),YES)
#aesxam.wasm: aesxam_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying aesxam_prebuild.wasm !! "
#	cp aesxam_prebuild.wasm aesxam.wasm
#else
#aesxam_prebuild.wasm: aesxam.wasm
#	cp aesxam.wasm aesxam_prebuild.wasm
#endif

#GO

#arcfour.wasm:

#ifeq ($(COPY_HELLO),YES)
#arcfour.wasm: arcfour_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying arcfour_prebuild.wasm !! "
#	cp arcfour_prebuild.wasm arcfour.wasm
#else
#arcfour_prebuild.wasm: arcfour.wasm
#	cp arcfour.wasm arcfour_prebuild.wasm
#endif

#GO

arraybinsearch.wasm:

ifeq ($(COPY_HELLO),YES)
arraybinsearch.wasm: arraybinsearch_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying arraybinsearch_prebuild.wasm !! "
	cp arraybinsearch_prebuild.wasm arraybinsearch.wasm
else
arraybinsearch_prebuild.wasm: arraybinsearch.wasm
	cp arraybinsearch.wasm arraybinsearch_prebuild.wasm
endif

#GO

arraysort.wasm:

ifeq ($(COPY_HELLO),YES)
arraysort.wasm: arraysort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying arraysort_prebuild.wasm !! "
	cp arraysort_prebuild.wasm arraysort.wasm
else
arraysort_prebuild.wasm: arraysort.wasm
	cp arraysort.wasm arraysort_prebuild.wasm
endif

#GO

basicmath_small.wasm:

ifeq ($(COPY_HELLO),YES)
basicmath_small.wasm: basicmath_small_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying basicmath_small_prebuild.wasm !! "
	cp basicmath_small_prebuild.wasm basicmath_small.wasm
else
basicmath_small_prebuild.wasm: basicmath_small.wasm
	cp basicmath_small.wasm basicmath_small_prebuild.wasm
endif

#GO

cast128.wasm:

ifeq ($(COPY_HELLO),YES)
cast128.wasm: cast128_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying cast128_prebuild.wasm !! "
	cp cast128_prebuild.wasm cast128.wasm
else
cast128_prebuild.wasm: cast128.wasm
	cp cast128.wasm cast128_prebuild.wasm
endif

#GO

cnt.wasm:

ifeq ($(COPY_HELLO),YES)
cnt.wasm: cnt_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying cnt_prebuild.wasm !! "
	cp cnt_prebuild.wasm cnt.wasm
else
cnt_prebuild.wasm: cnt.wasm
	cp cnt.wasm cnt_prebuild.wasm
endif

#GO

crc_32.wasm:

ifeq ($(COPY_HELLO),YES)
crc_32.wasm: crc_32_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying crc_32_prebuild.wasm !! "
	cp crc_32_prebuild.wasm crc_32.wasm
else
crc_32_prebuild.wasm: crc_32.wasm
	cp crc_32.wasm crc_32_prebuild.wasm
endif

#GO

#ctl.wasm:

#ifeq ($(COPY_HELLO),YES)
#ctl.wasm: ctl_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying ctl_prebuild.wasm !! "
#	cp ctl_prebuild.wasm ctl.wasm
#else
#ctl_prebuild.wasm: ctl.wasm
#	cp ctl.wasm ctl_prebuild.wasm
#endif

#GO

des.wasm:

ifeq ($(COPY_HELLO),YES)
des.wasm: des_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying des_prebuild.wasm !! "
	cp des_prebuild.wasm des.wasm
else
des_prebuild.wasm: des.wasm
	cp des.wasm des_prebuild.wasm
endif

#GO

dijkstra_small.wasm:

ifeq ($(COPY_HELLO),YES)
dijkstra_small.wasm: dijkstra_small_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying dijkstra_small_prebuild.wasm !! "
	cp dijkstra_small_prebuild.wasm dijkstra_small.wasm
else
dijkstra_small_prebuild.wasm: dijkstra_small.wasm
	cp dijkstra_small.wasm dijkstra_small_prebuild.wasm
endif

#GO

dllist.wasm:

ifeq ($(COPY_HELLO),YES)
dllist.wasm: dllist_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying dllist_prebuild.wasm !! "
	cp dllist_prebuild.wasm dllist.wasm
else
dllist_prebuild.wasm: dllist.wasm
	cp dllist.wasm dllist_prebuild.wasm
endif

#GO

ef_exp.wasm:

ifeq ($(COPY_HELLO),YES)
ef_exp.wasm: ef_exp_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying ef_exp_prebuild.wasm !! "
	cp ef_exp_prebuild.wasm ef_exp.wasm
else
ef_exp_prebuild.wasm: ef_exp.wasm
	cp ef_exp.wasm ef_exp_prebuild.wasm
endif

#GO

ef_log.wasm:

ifeq ($(COPY_HELLO),YES)
ef_log.wasm: ef_log_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying ef_log_prebuild.wasm !! "
	cp ef_log_prebuild.wasm ef_log.wasm
else
ef_log_prebuild.wasm: ef_log.wasm
	cp ef_log.wasm ef_log_prebuild.wasm
endif

#GO

ef_mod.wasm:

ifeq ($(COPY_HELLO),YES)
ef_mod.wasm: ef_mod_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying ef_mod_prebuild.wasm !! "
	cp ef_mod_prebuild.wasm ef_mod.wasm
else
ef_mod_prebuild.wasm: ef_mod.wasm
	cp ef_mod.wasm ef_mod_prebuild.wasm
endif

#GO

ef_sqrt.wasm:

ifeq ($(COPY_HELLO),YES)
ef_sqrt.wasm: ef_sqrt_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying ef_sqrt_prebuild.wasm !! "
	cp ef_sqrt_prebuild.wasm ef_sqrt.wasm
else
ef_sqrt_prebuild.wasm: ef_sqrt.wasm
	cp ef_sqrt.wasm ef_sqrt_prebuild.wasm
endif

#GO

fast_fwd_inc.wasm:

ifeq ($(COPY_HELLO),YES)
fast_fwd_inc.wasm: fast_fwd_inc_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying fast_fwd_inc_prebuild.wasm !! "
	cp fast_fwd_inc_prebuild.wasm fast_fwd_inc.wasm
else
fast_fwd_inc_prebuild.wasm: fast_fwd_inc.wasm
	cp fast_fwd_inc.wasm fast_fwd_inc_prebuild.wasm
endif

#GO

fast_rev_d12.wasm:

ifeq ($(COPY_HELLO),YES)
fast_rev_d12.wasm: fast_rev_d12_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying fast_rev_d12_prebuild.wasm !! "
	cp fast_rev_d12_prebuild.wasm fast_rev_d12.wasm
else
fast_rev_d12_prebuild.wasm: fast_rev_d12.wasm
	cp fast_rev_d12.wasm fast_rev_d12_prebuild.wasm
endif

#GO

hashtable.wasm:

ifeq ($(COPY_HELLO),YES)
hashtable.wasm: hashtable_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying hashtable_prebuild.wasm !! "
	cp hashtable_prebuild.wasm hashtable.wasm
else
hashtable_prebuild.wasm: hashtable.wasm
	cp hashtable.wasm hashtable_prebuild.wasm
endif

#GO

#libcubic.wasm:

#ifeq ($(COPY_HELLO),YES)
#libcubic.wasm: libcubic_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying libcubic_prebuild.wasm !! "
#	cp libcubic_prebuild.wasm libcubic.wasm
#else
#libcubic_prebuild.wasm: libcubic.wasm
#	cp libcubic.wasm libcubic_prebuild.wasm
#endif

#GO

libdtoa.wasm:

ifeq ($(COPY_HELLO),YES)
libdtoa.wasm: libdtoa_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libdtoa_prebuild.wasm !! "
	cp libdtoa_prebuild.wasm libdtoa.wasm
else
libdtoa_prebuild.wasm: libdtoa.wasm
	cp libdtoa.wasm libdtoa_prebuild.wasm
endif

#GO

libduff.wasm:

ifeq ($(COPY_HELLO),YES)
libduff.wasm: libduff_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libduff_prebuild.wasm !! "
	cp libduff_prebuild.wasm libduff.wasm
else
libduff_prebuild.wasm: libduff.wasm
	cp libduff.wasm libduff_prebuild.wasm
endif

#GO

libedn.wasm:

ifeq ($(COPY_HELLO),YES)
libedn.wasm: libedn_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libedn_prebuild.wasm !! "
	cp libedn_prebuild.wasm libedn.wasm
else
libedn_prebuild.wasm: libedn.wasm
	cp libedn.wasm libedn_prebuild.wasm
endif

#GO

libexpint.wasm:

ifeq ($(COPY_HELLO),YES)
libexpint.wasm: libexpint_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libexpint_prebuild.wasm !! "
	cp libexpint_prebuild.wasm libexpint.wasm
else
libexpint_prebuild.wasm: libexpint.wasm
	cp libexpint.wasm libexpint_prebuild.wasm
endif

#GO

libfac.wasm:

ifeq ($(COPY_HELLO),YES)
libfac.wasm: libfac_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfac_prebuild.wasm !! "
	cp libfac_prebuild.wasm libfac.wasm
else
libfac_prebuild.wasm: libfac.wasm
	cp libfac.wasm libfac_prebuild.wasm
endif

#GO

libfasta.wasm:

ifeq ($(COPY_HELLO),YES)
libfasta.wasm: libfasta_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfasta_prebuild.wasm !! "
	cp libfasta_prebuild.wasm libfasta.wasm
else
libfasta_prebuild.wasm: libfasta.wasm
	cp libfasta.wasm libfasta_prebuild.wasm
endif

#GO

libfdct.wasm:

ifeq ($(COPY_HELLO),YES)
libfdct.wasm: libfdct_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfdct_prebuild.wasm !! "
	cp libfdct_prebuild.wasm libfdct.wasm
else
libfdct_prebuild.wasm: libfdct.wasm
	cp libfdct.wasm libfdct_prebuild.wasm
endif

#GO

libfibcall.wasm:

ifeq ($(COPY_HELLO),YES)
libfibcall.wasm: libfibcall_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfibcall_prebuild.wasm !! "
	cp libfibcall_prebuild.wasm libfibcall.wasm
else
libfibcall_prebuild.wasm: libfibcall.wasm
	cp libfibcall.wasm libfibcall_prebuild.wasm
endif

#GO

libfir.wasm:

ifeq ($(COPY_HELLO),YES)
libfir.wasm: libfir_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfir_prebuild.wasm !! "
	cp libfir_prebuild.wasm libfir.wasm
else
libfir_prebuild.wasm: libfir.wasm
	cp libfir.wasm libfir_prebuild.wasm
endif

#GO

libfrac.wasm:

ifeq ($(COPY_HELLO),YES)
libfrac.wasm: libfrac_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libfrac_prebuild.wasm !! "
	cp libfrac_prebuild.wasm libfrac.wasm
else
libfrac_prebuild.wasm: libfrac.wasm
	cp libfrac.wasm libfrac_prebuild.wasm
endif

#GO

libhuffbench.wasm:

ifeq ($(COPY_HELLO),YES)
libhuffbench.wasm: libhuffbench_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libhuffbench_prebuild.wasm !! "
	cp libhuffbench_prebuild.wasm libhuffbench.wasm
else
libhuffbench_prebuild.wasm: libhuffbench.wasm
	cp libhuffbench.wasm libhuffbench_prebuild.wasm
endif

#GO

libinsertsort.wasm:

ifeq ($(COPY_HELLO),YES)
libinsertsort.wasm: libinsertsort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libinsertsort_prebuild.wasm !! "
	cp libinsertsort_prebuild.wasm libinsertsort.wasm
else
libinsertsort_prebuild.wasm: libinsertsort.wasm
	cp libinsertsort.wasm libinsertsort_prebuild.wasm
endif

#GO

libjfdctint.wasm:

ifeq ($(COPY_HELLO),YES)
libjfdctint.wasm: libjfdctint_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libjfdctint_prebuild.wasm !! "
	cp libjfdctint_prebuild.wasm libjfdctint.wasm
else
libjfdctint_prebuild.wasm: libjfdctint.wasm
	cp libjfdctint.wasm libjfdctint_prebuild.wasm
endif

#GO

liblcdnum.wasm:

ifeq ($(COPY_HELLO),YES)
liblcdnum.wasm: liblcdnum_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying liblcdnum_prebuild.wasm !! "
	cp liblcdnum_prebuild.wasm liblcdnum.wasm
else
liblcdnum_prebuild.wasm: liblcdnum.wasm
	cp liblcdnum.wasm liblcdnum_prebuild.wasm
endif

#GO

liblevenshtein.wasm:

ifeq ($(COPY_HELLO),YES)
liblevenshtein.wasm: liblevenshtein_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying liblevenshtein_prebuild.wasm !! "
	cp liblevenshtein_prebuild.wasm liblevenshtein.wasm
else
liblevenshtein_prebuild.wasm: liblevenshtein.wasm
	cp liblevenshtein.wasm liblevenshtein_prebuild.wasm
endif

#GO

libludcmp.wasm:

ifeq ($(COPY_HELLO),YES)
libludcmp.wasm: libludcmp_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libludcmp_prebuild.wasm !! "
	cp libludcmp_prebuild.wasm libludcmp.wasm
else
libludcmp_prebuild.wasm: libludcmp.wasm
	cp libludcmp.wasm libludcmp_prebuild.wasm
endif

#GO

libmergesort.wasm:

ifeq ($(COPY_HELLO),YES)
libmergesort.wasm: libmergesort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libmergesort_prebuild.wasm !! "
	cp libmergesort_prebuild.wasm libmergesort.wasm
else
libmergesort_prebuild.wasm: libmergesort.wasm
	cp libmergesort.wasm libmergesort_prebuild.wasm
endif

#GO

libminver.wasm:

ifeq ($(COPY_HELLO),YES)
libminver.wasm: libminver_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libminver_prebuild.wasm !! "
	cp libminver_prebuild.wasm libminver.wasm
else
libminver_prebuild.wasm: libminver.wasm
	cp libminver.wasm libminver_prebuild.wasm
endif

#GO

libndes.wasm:

ifeq ($(COPY_HELLO),YES)
libndes.wasm: libndes_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libndes_prebuild.wasm !! "
	cp libndes_prebuild.wasm libndes.wasm
else
libndes_prebuild.wasm: libndes.wasm
	cp libndes.wasm libndes_prebuild.wasm
endif

#GO

libnsichneu.wasm:

ifeq ($(COPY_HELLO),YES)
libnsichneu.wasm: libnsichneu_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libnsichneu_prebuild.wasm !! "
	cp libnsichneu_prebuild.wasm libnsichneu.wasm
else
libnsichneu_prebuild.wasm: libnsichneu.wasm
	cp libnsichneu.wasm libnsichneu_prebuild.wasm
endif

#GO

libpicojpeg.wasm:

ifeq ($(COPY_HELLO),YES)
libpicojpeg.wasm: libpicojpeg_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libpicojpeg_prebuild.wasm !! "
	cp libpicojpeg_prebuild.wasm libpicojpeg.wasm
else
libpicojpeg_prebuild.wasm: libpicojpeg.wasm
	cp libpicojpeg.wasm libpicojpeg_prebuild.wasm
endif

#GO

libprime.wasm:

ifeq ($(COPY_HELLO),YES)
libprime.wasm: libprime_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libprime_prebuild.wasm !! "
	cp libprime_prebuild.wasm libprime.wasm
else
libprime_prebuild.wasm: libprime.wasm
	cp libprime.wasm libprime_prebuild.wasm
endif

#GO

libqsort.wasm:

ifeq ($(COPY_HELLO),YES)
libqsort.wasm: libqsort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libqsort_prebuild.wasm !! "
	cp libqsort_prebuild.wasm libqsort.wasm
else
libqsort_prebuild.wasm: libqsort.wasm
	cp libqsort.wasm libqsort_prebuild.wasm
endif

#GO

libqurt.wasm:

ifeq ($(COPY_HELLO),YES)
libqurt.wasm: libqurt_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libqurt_prebuild.wasm !! "
	cp libqurt_prebuild.wasm libqurt.wasm
else
libqurt_prebuild.wasm: libqurt.wasm
	cp libqurt.wasm libqurt_prebuild.wasm
endif

#GO

librecursion.wasm:

ifeq ($(COPY_HELLO),YES)
librecursion.wasm: librecursion_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying librecursion_prebuild.wasm !! "
	cp librecursion_prebuild.wasm librecursion.wasm
else
librecursion_prebuild.wasm: librecursion.wasm
	cp librecursion.wasm librecursion_prebuild.wasm
endif

#GO

libselect.wasm:

ifeq ($(COPY_HELLO),YES)
libselect.wasm: libselect_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libselect_prebuild.wasm !! "
	cp libselect_prebuild.wasm libselect.wasm
else
libselect_prebuild.wasm: libselect.wasm
	cp libselect.wasm libselect_prebuild.wasm
endif

#GO

libslre.wasm:

ifeq ($(COPY_HELLO),YES)
libslre.wasm: libslre_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libslre_prebuild.wasm !! "
	cp libslre_prebuild.wasm libslre.wasm
else
libslre_prebuild.wasm: libslre.wasm
	cp libslre.wasm libslre_prebuild.wasm
endif

#GO

libsqrt.wasm:

ifeq ($(COPY_HELLO),YES)
libsqrt.wasm: libsqrt_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libsqrt_prebuild.wasm !! "
	cp libsqrt_prebuild.wasm libsqrt.wasm
else
libsqrt_prebuild.wasm: libsqrt.wasm
	cp libsqrt.wasm libsqrt_prebuild.wasm
endif

#GO

libst.wasm:

ifeq ($(COPY_HELLO),YES)
libst.wasm: libst_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libst_prebuild.wasm !! "
	cp libst_prebuild.wasm libst.wasm
else
libst_prebuild.wasm: libst.wasm
	cp libst.wasm libst_prebuild.wasm
endif

#GO

libstb_perlin.wasm:

ifeq ($(COPY_HELLO),YES)
libstb_perlin.wasm: libstb_perlin_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libstb_perlin_prebuild.wasm !! "
	cp libstb_perlin_prebuild.wasm libstb_perlin.wasm
else
libstb_perlin_prebuild.wasm: libstb_perlin.wasm
	cp libstb_perlin.wasm libstb_perlin_prebuild.wasm
endif

#GO

libstatemate.wasm:

ifeq ($(COPY_HELLO),YES)
libstatemate.wasm: libstatemate_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libstatemate_prebuild.wasm !! "
	cp libstatemate_prebuild.wasm libstatemate.wasm
else
libstatemate_prebuild.wasm: libstatemate.wasm
	cp libstatemate.wasm libstatemate_prebuild.wasm
endif

#GO

libstrstr.wasm:

ifeq ($(COPY_HELLO),YES)
libstrstr.wasm: libstrstr_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libstrstr_prebuild.wasm !! "
	cp libstrstr_prebuild.wasm libstrstr.wasm
else
libstrstr_prebuild.wasm: libstrstr.wasm
	cp libstrstr.wasm libstrstr_prebuild.wasm
endif

#GO

libtarai.wasm:

ifeq ($(COPY_HELLO),YES)
libtarai.wasm: libtarai_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libtarai_prebuild.wasm !! "
	cp libtarai_prebuild.wasm libtarai.wasm
else
libtarai_prebuild.wasm: libtarai.wasm
	cp libtarai.wasm libtarai_prebuild.wasm
endif

#GO

libtemplate.wasm:

ifeq ($(COPY_HELLO),YES)
libtemplate.wasm: libtemplate_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libtemplate_prebuild.wasm !! "
	cp libtemplate_prebuild.wasm libtemplate.wasm
else
libtemplate_prebuild.wasm: libtemplate.wasm
	cp libtemplate.wasm libtemplate_prebuild.wasm
endif

#GO

libud.wasm:

ifeq ($(COPY_HELLO),YES)
libud.wasm: libud_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libud_prebuild.wasm !! "
	cp libud_prebuild.wasm libud.wasm
else
libud_prebuild.wasm: libud.wasm
	cp libud.wasm libud_prebuild.wasm
endif

#GO

libwhetstone.wasm:

ifeq ($(COPY_HELLO),YES)
libwhetstone.wasm: libwhetstone_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libwhetstone_prebuild.wasm !! "
	cp libwhetstone_prebuild.wasm libwhetstone.wasm
else
libwhetstone_prebuild.wasm: libwhetstone.wasm
	cp libwhetstone.wasm libwhetstone_prebuild.wasm
endif

#GO

libwikisort.wasm:

ifeq ($(COPY_HELLO),YES)
libwikisort.wasm: libwikisort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying libwikisort_prebuild.wasm !! "
	cp libwikisort_prebuild.wasm libwikisort.wasm
else
libwikisort_prebuild.wasm: libwikisort.wasm
	cp libwikisort.wasm libwikisort_prebuild.wasm
endif

#GO

listinsertsort.wasm:

ifeq ($(COPY_HELLO),YES)
listinsertsort.wasm: listinsertsort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying listinsertsort_prebuild.wasm !! "
	cp listinsertsort_prebuild.wasm listinsertsort.wasm
else
listinsertsort_prebuild.wasm: listinsertsort.wasm
	cp listinsertsort.wasm listinsertsort_prebuild.wasm
endif

#GO

listsort.wasm:

ifeq ($(COPY_HELLO),YES)
listsort.wasm: listsort_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying listsort_prebuild.wasm !! "
	cp listsort_prebuild.wasm listsort.wasm
else
listsort_prebuild.wasm: listsort.wasm
	cp listsort.wasm listsort_prebuild.wasm
endif

#GO

#matmult.wasm:

#ifeq ($(COPY_HELLO),YES)
#matmult.wasm: matmult_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying matmult_prebuild.wasm !! "
#	cp matmult_prebuild.wasm matmult.wasm
#else
#matmult_prebuild.wasm: matmult.wasm
#	cp matmult.wasm matmult_prebuild.wasm
#endif

#GO

md5.wasm:

ifeq ($(COPY_HELLO),YES)
md5.wasm: md5_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying md5_prebuild.wasm !! "
	cp md5_prebuild.wasm md5.wasm
else
md5_prebuild.wasm: md5.wasm
	cp md5.wasm md5_prebuild.wasm
endif

#GO

miniz_b.wasm:

ifeq ($(COPY_HELLO),YES)
miniz_b.wasm: miniz_b_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying miniz_b_prebuild.wasm !! "
	cp miniz_b_prebuild.wasm miniz_b.wasm
else
miniz_b_prebuild.wasm: miniz_b.wasm
	cp miniz_b.wasm miniz_b_prebuild.wasm
endif

#GO

miniz.wasm:

ifeq ($(COPY_HELLO),YES)
miniz.wasm: miniz_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying miniz_prebuild.wasm !! "
	cp miniz_prebuild.wasm miniz.wasm
else
miniz_prebuild.wasm: miniz.wasm
	cp miniz.wasm miniz_prebuild.wasm
endif

#GO

nbody.wasm:

ifeq ($(COPY_HELLO),YES)
nbody.wasm: nbody_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying nbody_prebuild.wasm !! "
	cp nbody_prebuild.wasm nbody.wasm
else
nbody_prebuild.wasm: nbody.wasm
	cp nbody.wasm nbody_prebuild.wasm
endif

#GO

nettle-aes.wasm:

ifeq ($(COPY_HELLO),YES)
nettle-aes.wasm: nettle-aes_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying nettle-aes_prebuild.wasm !! "
	cp nettle-aes_prebuild.wasm nettle-aes.wasm
else
nettle-aes_prebuild.wasm: nettle-aes.wasm
	cp nettle-aes.wasm nettle-aes_prebuild.wasm
endif

#GO

nettle-sha256.wasm:

ifeq ($(COPY_HELLO),YES)
nettle-sha256.wasm: nettle-sha256_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying nettle-sha256_prebuild.wasm !! "
	cp nettle-sha256_prebuild.wasm nettle-sha256.wasm
else
nettle-sha256_prebuild.wasm: nettle-sha256.wasm
	cp nettle-sha256.wasm nettle-sha256_prebuild.wasm
endif

#GO

picojpeg_test.wasm:

ifeq ($(COPY_HELLO),YES)
picojpeg_test.wasm: picojpeg_test_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying picojpeg_test_prebuild.wasm !! "
	cp picojpeg_test_prebuild.wasm picojpeg_test.wasm
else
picojpeg_test_prebuild.wasm: picojpeg_test.wasm
	cp picojpeg_test.wasm picojpeg_test_prebuild.wasm
endif

#GO

qrencode.wasm:

ifeq ($(COPY_HELLO),YES)
qrencode.wasm: qrencode_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying qrencode_prebuild.wasm !! "
	cp qrencode_prebuild.wasm qrencode.wasm
else
qrencode_prebuild.wasm: qrencode.wasm
	cp qrencode.wasm qrencode_prebuild.wasm
endif

#GO

qrframe.wasm:

ifeq ($(COPY_HELLO),YES)
qrframe.wasm: qrframe_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying qrframe_prebuild.wasm !! "
	cp qrframe_prebuild.wasm qrframe.wasm
else
qrframe_prebuild.wasm: qrframe.wasm
	cp qrframe.wasm qrframe_prebuild.wasm
endif

#GO

qrtest.wasm:

ifeq ($(COPY_HELLO),YES)
qrtest.wasm: qrtest_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying qrtest_prebuild.wasm !! "
	cp qrtest_prebuild.wasm qrtest.wasm
else
qrtest_prebuild.wasm: qrtest.wasm
	cp qrtest.wasm qrtest_prebuild.wasm
endif

#GO

#queue.wasm:

#ifeq ($(COPY_HELLO),YES)
#queue.wasm: queue_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying queue_prebuild.wasm !! "
#	cp queue_prebuild.wasm queue.wasm
#else
#queue_prebuild.wasm: queue.wasm
#	cp queue.wasm queue_prebuild.wasm
#endif

#GO

rbtree.wasm:

ifeq ($(COPY_HELLO),YES)
rbtree.wasm: rbtree_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying rbtree_prebuild.wasm !! "
	cp rbtree_prebuild.wasm rbtree.wasm
else
rbtree_prebuild.wasm: rbtree.wasm
	cp rbtree.wasm rbtree_prebuild.wasm
endif

#GO

string.wasm:

ifeq ($(COPY_HELLO),YES)
string.wasm: string_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying string_prebuild.wasm !! "
	cp string_prebuild.wasm string.wasm
else
string_prebuild.wasm: string.wasm
	cp string.wasm string_prebuild.wasm
endif

#GO

stringsearch1.wasm:

ifeq ($(COPY_HELLO),YES)
stringsearch1.wasm: stringsearch1_prebuild.wasm
	@echo "!! NO wasm-ld(-VERSION) found  !!"
	@echo "!! copying stringsearch1_prebuild.wasm !! "
	cp stringsearch1_prebuild.wasm stringsearch1.wasm
else
stringsearch1_prebuild.wasm: stringsearch1.wasm
	cp stringsearch1.wasm stringsearch1_prebuild.wasm
endif

#GO

#trio.wasm:

#ifeq ($(COPY_HELLO),YES)
#trio.wasm: trio_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying trio_prebuild.wasm !! "
#	cp trio_prebuild.wasm trio.wasm
#else
#trio_prebuild.wasm: trio.wasm
#	cp trio.wasm trio_prebuild.wasm
#endif

#GO

#triostr.wasm:

#ifeq ($(COPY_HELLO),YES)
#triostr.wasm: triostr_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying triostr_prebuild.wasm !! "
#	cp triostr_prebuild.wasm triostr.wasm
#else
#triostr_prebuild.wasm: triostr.wasm
#	cp triostr.wasm triostr_prebuild.wasm
#endif

#GO

#trio_test.wasm:

#ifeq ($(COPY_HELLO),YES)
#trio_test.wasm: trio_test_prebuild.wasm
#	@echo "!! NO wasm-ld(-VERSION) found  !!"
#	@echo "!! copying trio_test_prebuild.wasm !! "
#	cp trio_test_prebuild.wasm trio_test.wasm
#else
#trio_test_prebuild.wasm: trio_test.wasm
#	cp trio_test.wasm trio_test_prebuild.wasm
#endif

#GO


.PHONY: FORCE
