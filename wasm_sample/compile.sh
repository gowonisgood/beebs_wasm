# #!/bin/bash

# # WASI SDK 경로 설정
# WASI_SDK_PATH=${WASI_SDK_PATH:-/home/gowonisgood/wasi-sdk/build/install}
# CLANG="${WASI_SDK_PATH}/bin/clang"
# WASM_LD="${WASI_SDK_PATH}/bin/wasm-ld"
# SYSROOT="${WASI_SDK_PATH}/share/wasi-sysroot"

# # 공통 컴파일 플래그 (C용)
# CFLAGS="-Wall --target=wasm32-wasi -emit-llvm -Os -flto -fvisibility=hidden -ffunction-sections -fdata-sections"
# CFLAGS+=" --sysroot=${SYSROOT} -I${SYSROOT}/include -I." 
# CFLAGS+=" -Wno-error=unused-function"

# # 링커 플래그
# LDFLAGS="--no-entry --strip-all --export-dynamic --export=__heap_base --export=__data_end"
# LDFLAGS+=" --allow-undefined --gc-sections --initial-memory=65536 -z stack-size=4096"
# LDFLAGS+=" -L${SYSROOT}/lib/wasm32-wasi -O3 --lto-O3 --error-limit=0"

# # 모든 하위 디렉터리 탐색
# find . -type d | while read -r dir; do
#     c_files=("$dir"/*.c)
    
#     # 해당 디렉터리에 .c 파일이 있는지 확인
#     if [[ -f "${c_files[0]}" ]]; then
#         echo "Processing directory: $dir"
        
#         # .o 및 .wasm 파일을 저장할 배열
#         obj_files=()
#         wasm_files=()
        
#         # 각 .c 파일에 대해 .o 파일 생성
#         for c_file in "${c_files[@]}"; do
#             base_name="$(basename "$c_file" .c)"
#             obj_file="$dir/$base_name.o"
#             wasm_file="$dir/$base_name.wasm"
            
#             echo "Compiling $c_file to $obj_file"
#             "$CLANG" $CFLAGS -c "$c_file" -o "$obj_file"
#             obj_files+=("$obj_file")
#             wasm_files+=("$wasm_file")
#         done
        
#         # .o 파일을 .wasm 파일로 링크
#         echo "Linking ${wasm_files[@]}"
#         #"$WASM_LD" --verbose $LDFLAGS -o "${wasm_files[0]}" "${obj_files[@]}"
#         "$WASM_LD" $LDFLAGS -o "${wasm_files[0]}" "${obj_files[@]}"


#         # 생성된 .wasm 파일을 ../.. 으로 복사
#         echo "Copying ${wasm_files[0]} to ../../"
#         cp "${wasm_files[0]}" ../
#     fi
# done
#!/bin/bash

# # WASI SDK 경로 설정
# WASI_SDK_PATH=${WASI_SDK_PATH:-/home/gowonisgood/wasi-sdk/build/install}
# CLANG="${WASI_SDK_PATH}/bin/clang"
# WASM_LD="${WASI_SDK_PATH}/bin/wasm-ld"
# SYSROOT="${WASI_SDK_PATH}/share/wasi-sysroot"

# # 공통 컴파일 플래그 (C용)
# CFLAGS="-Wall --target=wasm32-wasi -emit-llvm -Os -flto -fvisibility=hidden -ffunction-sections -fdata-sections"
# CFLAGS+=" --sysroot=${SYSROOT} -I${SYSROOT}/include -I." 
# CFLAGS+=" -Wno-error=unused-function"

# # 링커 플래그
# LDFLAGS="--no-entry --strip-all --export-dynamic --export=__heap_base --export=__data_end"
# LDFLAGS+=" --allow-undefined --gc-sections --initial-memory=65536 -z stack-size=4096"
# LDFLAGS+=" -L${SYSROOT}/lib/wasm32-wasi -O3 --lto-O3 --error-limit=0"

# # 모든 하위 디렉터리 탐색
# find . -type d | while read -r dir; do
#     c_files=("$dir"/*.c)
    
#     # 해당 디렉터리에 .c 파일이 있는지 확인
#     if [[ -f "${c_files[0]}" ]]; then
#         echo "Processing directory: $dir"
        
#         # .o 파일들을 저장할 배열 초기화 및 wasm 파일명 변수
#         obj_files=()
#         wasm_file=""
        
#         # 각 .c 파일에 대해 .o 파일 생성
#         for c_file in "${c_files[@]}"; do
#             base_name="$(basename "$c_file" .c)"
#             # 파일 이름의 '-'와 '.'만 '_'로 치환 (디렉터리 이름은 그대로 유지)
#             sanitized_name=$(echo "$base_name" | sed 's/[-.]/_/g')
#             obj_file="$dir/$base_name.o"
            
#             # 최초 파일의 sanitized 이름을 최종 출력 파일명으로 사용
#             if [ -z "$wasm_file" ]; then
#                 wasm_file="$dir/${sanitized_name}.wasm"
#             fi
            
#             echo "Compiling $c_file to $obj_file"
#             "$CLANG" $CFLAGS -c "$c_file" -o "$obj_file"
#             obj_files+=("$obj_file")
#         done
        
#         # 모든 .o 파일을 하나의 .wasm 파일로 링크
#         echo "Linking to $wasm_file"
#         "$WASM_LD" $LDFLAGS -o "$wasm_file" "${obj_files[@]}"
        
#         # 생성된 .wasm 파일을 상위 디렉터리로 복사 (필요한 경우)
#         echo "Copying $wasm_file to ../"
#         cp "$wasm_file" ../
#     fi
# done

# WASI SDK 경로 설정
WASI_SDK_PATH=${WASI_SDK_PATH:-/home/gowonisgood/wasi-sdk/build/install}
CLANG="${WASI_SDK_PATH}/bin/clang"
WASM_LD="${WASI_SDK_PATH}/bin/wasm-ld"
SYSROOT="${WASI_SDK_PATH}/share/wasi-sysroot"

# 공통 컴파일 플래그 (C용)
CFLAGS="-Wall --target=wasm32-wasi -emit-llvm -O0 -flto -fvisibility=hidden -ffunction-sections -fdata-sections"
CFLAGS+=" --sysroot=${SYSROOT} -I${SYSROOT}/include -I."
CFLAGS+=" -Wno-error=unused-function"
#CFLAGS+=" -D SCALE_FACTOR=4096"

# 링커 플래그
LDFLAGS="--no-entry --strip-all --export-dynamic --export=__heap_base --export=__data_end"
LDFLAGS+=" --allow-undefined --gc-sections --initial-memory=65536 -z stack-size=4096"
LDFLAGS+=" -L${SYSROOT}/lib/wasm32-wasi -O3 --lto-O3 --error-limit=0"

# 모든 하위 디렉터리 탐색
find . -type d | while read -r dir; do
    c_files=("$dir"/*.c)

    # 해당 디렉터리에 .c 파일이 있는지 확인
    if [[ -f "${c_files[0]}" ]]; then
        echo "Processing directory: $dir"

        # .o 파일들을 저장할 배열 초기화
        obj_files=()

        # 최종 출력 파일명을 디렉터리 이름을 사용하여 설정
        dir_name=$(basename "$dir")
        sanitized_dir=$(echo "$dir_name" | sed 's/[-.]/_/g')
        wasm_file="$dir/${sanitized_dir}.wasm"

        # 각 .c 파일에 대해 .o 파일 생성
        for c_file in "${c_files[@]}"; do
            base_name="$(basename "$c_file" .c)"
            obj_file="$dir/$base_name.o"

            echo "Compiling $c_file to $obj_file"
            "$CLANG" $CFLAGS -c "$c_file" -o "$obj_file"
            obj_files+=("$obj_file")
        done

        # 모든 .o 파일을 하나의 .wasm 파일로 링크
        echo "Linking to $wasm_file"
        "$WASM_LD" $LDFLAGS -o "$wasm_file" "${obj_files[@]}"

        # 생성된 .wasm 파일을 상위 디렉터리로 복사 (필요한 경우)
        echo "Copying $wasm_file to ../"
        cp "$wasm_file" ../
    fi
done

