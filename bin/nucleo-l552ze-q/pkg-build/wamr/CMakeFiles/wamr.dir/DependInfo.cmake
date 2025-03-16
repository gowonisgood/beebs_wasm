
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/arch/invokeNative_thumb_vfp.s" "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/examples/beebs_wasm/bin/nucleo-l552ze-q/pkg-build/wamr/CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/arch/invokeNative_thumb_vfp.s.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "BH_FREE=wasm_runtime_free"
  "BH_MALLOC=wasm_runtime_malloc"
  "BH_PLATFORM_RIOT"
  "BUILD_TARGET=\"THUMB\""
  "BUILD_TARGET_THUMB_VFP"
  "WASM_DISABLE_HW_BOUND_CHECK=0"
  "WASM_DISABLE_STACK_HW_BOUND_CHECK=0"
  "WASM_DISABLE_WAKEUP_BLOCKING_OP=0"
  "WASM_ENABLE_AOT_INTRINSICS=0"
  "WASM_ENABLE_BULK_MEMORY=1"
  "WASM_ENABLE_FAST_INTERP=0"
  "WASM_ENABLE_INTERP=1"
  "WASM_ENABLE_LIBC_BUILTIN=1"
  "WASM_ENABLE_MINI_LOADER=0"
  "WASM_ENABLE_MULTI_MODULE=0"
  "WASM_ENABLE_QUICK_AOT_ENTRY=0"
  "WASM_ENABLE_SHARED_MEMORY=0"
  "WASM_GLOBAL_HEAP_SIZE=10485760"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/libraries/libc-builtin"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/../include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot"
  "/usr/include/newlib/nano"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/core/lib/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/core/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/drivers/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/sys/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/boards/nucleo-l552ze-q/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/boards/common/nucleo/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/boards/common/stm32/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/boards/common/nucleo144/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/cpu/stm32/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/stm32/cmsis/l5/Include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/cpu/stm32/include/clk"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/cpu/cortexm_common/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/sys/libc/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/cmsis/CMSIS/Core/Include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/sys/auto_init/include"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/examples/beebs_wasm/bin/nucleo-l552ze-q/preprocessor"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_application.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_application.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_application.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_blocking_op.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_blocking_op.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_blocking_op.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_c_api.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_c_api.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_c_api.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_exec_env.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_exec_env.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_exec_env.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_loader_common.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_loader_common.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_loader_common.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_memory.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_memory.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_memory.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_native.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_native.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_native.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_runtime_common.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_runtime_common.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_runtime_common.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_shared_memory.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_shared_memory.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/common/wasm_shared_memory.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_interp_classic.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_interp_classic.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_interp_classic.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_loader.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_loader.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_loader.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_runtime.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_runtime.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/interpreter/wasm_runtime.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/libraries/libc-builtin/libc_builtin_wrapper.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/libraries/libc-builtin/libc_builtin_wrapper.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/iwasm/libraries/libc-builtin/libc_builtin_wrapper.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_alloc.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_alloc.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_alloc.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_gc.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_gc.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_gc.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_hmu.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_hmu.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_hmu.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_kfc.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_kfc.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/ems/ems_kfc.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/mem_alloc.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/mem_alloc.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/mem-alloc/mem_alloc.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_platform.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_platform.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_platform.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_thread.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_thread.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_thread.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_time.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_time.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/platform/riot/riot_time.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_assert.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_assert.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_assert.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_bitmap.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_bitmap.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_bitmap.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_common.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_common.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_common.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_hashmap.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_hashmap.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_hashmap.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_list.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_list.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_list.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_log.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_log.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_log.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_queue.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_queue.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_queue.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_vector.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_vector.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/bh_vector.c.obj.d"
  "/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/runtime_timer.c" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/runtime_timer.c.obj" "gcc" "CMakeFiles/wamr.dir/home/gowonisgood/wasm_runtime_protection_2025_re/wasm_runtime_protection_2025/RIOT/build/pkg/wamr/core/shared/utils/runtime_timer.c.obj.d"
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
