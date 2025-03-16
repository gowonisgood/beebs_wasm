compile.sh : .wasm파일로 컴파일 하는 코드
script.sh : 1차적으로 전처리 하는 파일 (#define 추가하거나 WASM_EXPORT 추가)
check_function.sh : 아마 script.sh파일 만으로는 main함수 추출이 다 안되어있을거임 그때 이걸 해주면됨
