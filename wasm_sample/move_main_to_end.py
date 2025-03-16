#!/usr/bin/env python3
import os
import re

def process_file(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()

    # main 함수 시작 위치 탐색 (첫번째 등장하는 "main(")
    main_start = None
    for i, line in enumerate(lines):
        # 주석을 고려하지 않고 단순 검색
        if re.search(r'\bmain\s*\(', line):
            main_start = i
            break
    if main_start is None:
        return False  # main 함수가 없으면 건너뜀

    # 함수 본문 시작을 알리는 '{' 찾기
    brace_line = None
    for i in range(main_start, len(lines)):
        if "{" in lines[i]:
            brace_line = i
            break
    if brace_line is None:
        return False  # 유효한 함수 정의가 아님

    # 중괄호 매칭을 이용해 main 함수 블록의 끝을 찾음
    brace_count = 0
    main_end = None
    for i in range(brace_line, len(lines)):
        brace_count += lines[i].count("{")
        brace_count -= lines[i].count("}")
        if brace_count == 0:
            main_end = i + 1  # 종료 줄까지 포함
            break
    if main_end is None:
        return False  # 중괄호가 올바르게 매칭되지 않음

    # main 함수 블록 추출
    main_block = lines[main_start:main_end]

    # 파일 내용에서 main 함수 블록 제거
    new_lines = lines[:main_start] + lines[main_end:]

    # 파일의 맨 끝에 main 함수 블록을 추가 (적절한 개행 포함)
    if new_lines and not new_lines[-1].endswith('\n'):
        new_lines[-1] += "\n"
    new_lines.append("\n")
    new_lines.extend(main_block)

    new_content = "".join(new_lines)
    original_content = "".join(lines)
    if new_content != original_content:
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(new_content)
        return True
    return False

def main():
    modified_count = 0
    for root, dirs, files in os.walk("."):
        for filename in files:
            if filename.endswith(".c"):
                filepath = os.path.join(root, filename)
                if process_file(filepath):
                    print(f"수정됨: {filepath}")
                    modified_count += 1
    print(f"총 {modified_count}개의 파일이 수정되었습니다.")

if __name__ == "__main__":
    main()

