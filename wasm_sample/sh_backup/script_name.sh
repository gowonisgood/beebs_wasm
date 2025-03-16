#!/bin/bash

# 찾을 디렉터리 설정 (현재 디렉터리 기준)
DIRECTORY="."

# 각 .c 파일에서 #include "support.h" 바로 밑에 코드를 추가하고,
# int benchmark()를 WASM_EXPORT int main(int argc, char *argv[])로 수정
# 그리고 "support.h"를 제외한 모든 헤더파일은 주석 처리 (//로 주석 처리)
for file in $(find $DIRECTORY -type f -name "*.c"); do
  # 'support.h'가 포함된 파일에만 적용
  if grep -q '#include "support.h"' "$file"; then
    # #include "support.h" 밑에 WASM_EXPORT 매크로 추가
    sed -i '/#include "support.h"/a \
#ifdef __cplusplus\
#define WASM_EXPORT __attribute__((visibility("default"))) extern "C"\
#else\
#define WASM_EXPORT __attribute__((visibility("default")))\
#endif' "$file"
    echo "Modified: $file"
  else
    echo "No #include \"support.h\" in: $file"
  fi

  # int benchmark()를 WASM_EXPORT int main(int argc, char *argv[])로 수정
  if grep -q 'int benchmark()' "$file"; then
    sed -i 's/int benchmark()/WASM_EXPORT int main(int argc, char *argv[])/g' "$file"
    echo "Replaced int benchmark() in: $file"
  fi
  
  # "support.h"를 제외한 모든 #include 헤더 파일을 주석 처리 (//로 주석 처리)
  #sed -i '/#include/ {
  #  /"support.h"/! s/^/\/\//
  #}' "$file"
  #echo "Commented out other #include headers with // in: $file"
done

