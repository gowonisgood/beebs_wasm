#!/bin/bash

# 현재 디렉터리의 모든 .c 파일을 처리합니다.
for file in *.c; do
    # 초기화
    has_main=0
    has_benchmark=0

    # 파일 내용을 한 번에 읽어서 변수에 저장합니다.
    file_content=$(cat "$file")

    # 이미 WASM_EXPORT main 함수가 있는지 확인합니다.
    if echo "$file_content" | grep -q -E 'WASM_EXPORT[[:space:]]+int[[:space:]]+main[[:space:]]*\('; then
        has_main=1
    fi

    # int main( 이 있는지 확인합니다.
    if echo "$file_content" | grep -q -E '^int[[:space:]]+main[[:space:]]*\('; then
        has_main=1
    fi

    # benchmark 함수가 있는지 확인합니다.
    if echo "$file_content" | grep -z -E 'int[[:space:]]*\n?[[:space:]]*benchmark[[:space:]]*\(void\)' >/dev/null; then
        has_benchmark=1
        # benchmark 함수 시그니처를 WASM_EXPORT main 함수로 교체합니다.
        sed -i -E ':a;N;$!ba;s/int[[:space:]]*\n?[[:space:]]*benchmark[[:space:]]*\(void\)/WASM_EXPORT int main(int argc, char *argv[])/g' "$file"
    else
        # 줄바꿈과 공백을 포함하여 다양한 형태의 benchmark 함수를 찾습니다.
        if echo "$file_content" | grep -z -E 'int[[:space:]]*\n[[:space:]]*benchmark[[:space:]]*\n[[:space:]]*\(void\)' >/dev/null; then
            has_benchmark=1
            # 해당 시그니처를 교체합니다.
            sed -i -E ':a;N;$!ba;s/int[[:space:]]*\n[[:space:]]*benchmark[[:space:]]*\n[[:space:]]*\(void\)/WASM_EXPORT int main(int argc, char *argv[])/g' "$file"
        fi
    fi

    # 만약 main 함수도 없고 benchmark 함수도 없으면 메시지를 출력합니다.
    if [[ $has_main -eq 0 && $has_benchmark -eq 0 ]]; then
        echo "$file file has no benchmark and main"
    fi
done

