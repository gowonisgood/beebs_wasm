#!/bin/bash

# WASM_EXPORT 매크로 정의
WASM_EXPORT_DEF="#ifdef __cplusplus\n#define WASM_EXPORT __attribute__((visibility(\"default\"))) extern \"C\"\n#else\n#define WASM_EXPORT __attribute__((visibility(\"default\")))\n#endif\n"

# 모든 하위 디렉터리에서 .c 파일을 찾음
find . -type f -name "*.c" | while read -r file; do
    # WASM_EXPORT 정의가 있는지 확인
    if ! grep -q "#define WASM_EXPORT" "$file"; then
        echo "Adding WASM_EXPORT definition to $file"
        temp_file="$(mktemp)"
        echo -e "$WASM_EXPORT_DEF" > "$temp_file"
        cat "$file" >> "$temp_file"
        mv "$temp_file" "$file"
    fi
    
    # benchmark 함수가 있는지 확인하고 main으로 변경
    #if grep -q "int benchmark" "$file"; then
    #    echo "Renaming benchmark to main in $file"
    #    sed -i 's/int benchmark/WASM_EXPORT int main/' "$file"
    #fi


    if perl -0777 -e 'exit(!(/int\s+benchmark/))' "$file"; then
        echo "Renaming benchmark to main in $file"
        perl -0777 -pi -e 's/int\s+benchmark/WASM_EXPORT int main/g' "$file"
    fi


done

