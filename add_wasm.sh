#!/bin/bash
# update_wasm_main.sh
# 이 스크립트는 기존의 wasm-main.c 파일(기본 뼈대 코드가 이미 있음)을 업데이트합니다.
# 현재 디렉터리에 있는 모든 *.wasm 파일 이름을 참고하여,
# 1) "파일이름.wasm.h" 형태의 include 구문을
#    "/*provide some test program*/" 주석 바로 아래에 삽입하고,
# 2) 각 모듈에 대한 테스트 코드를 main() 함수 내 "return 0;" 앞에 삽입합니다.

wasm_file="wasm-main.c"

# --- 1. include 구문 생성 및 삽입 ---
includes_tmp=$(mktemp)
for wasm in *.wasm; do
    # 예: example.wasm → "example.wasm.h"
   echo "#include \"blob/${wasm}.h\"" >> "$includes_tmp"
done

# "/*provide some test program*/" 다음 줄에 include 구문을 삽입합니다.
sed -i.bak '/\/\*provide some test program\*\//r '"$includes_tmp" "$wasm_file"

# --- 2. 테스트 코드 생성 ---
test_tmp=$(mktemp)
for wasm in *.wasm; do
    base=$(basename "$wasm" .wasm)
    cat >> "$test_tmp" << EOF
    // Test for ${base}
    printf("iwasm_initilised_${base}: %s\n", telltruth(iwasm_runtime_init()));
    int app_argc_${base} = 0;
    const char *app_argv_${base}[] = {""};
    ret = wamr_run_cp(${base}_wasm, ${base}_wasm_len, app_argc_${base}, app_argv_${base});
    printf("ret = %d\n", ret);
    iwasm_runtime_destroy();

EOF
done

# --- 3. main() 내부에 테스트 코드를 삽입 ---
# "return 0;" 이전에 테스트 코드를 추가합니다.
awk -v test_file="$test_tmp" '
    BEGIN {
        # test_file의 모든 내용을 test_lines 변수에 저장
        while ((getline line < test_file) > 0) {
            test_lines = test_lines line "\n"
        }
        close(test_file)
    }
    /return 0;/ {
        # "return 0;" 전에 test_lines 삽입
        printf "%s", test_lines
    }
    { print }
' "$wasm_file" > "${wasm_file}.new"

mv "${wasm_file}.new" "$wasm_file"

# 임시 파일 삭제
rm "$includes_tmp" "$test_tmp"

echo "wasm-main.c 파일이 업데이트되었습니다."
