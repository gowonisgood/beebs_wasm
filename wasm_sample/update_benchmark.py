#!/usr/bin/env python3
import os
import re

def process_file(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()
    content = "".join(lines)
    # 플래그: 파일 내에 해당 함수 호출이 이미 존재하는지 확인 (없을 때만 삽입)
    need_init = "initialise_benchmark();" not in content
    need_verify = "verify_benchmark();" not in content

    # 두 호출문 모두 이미 있으면 건너뜀
    if not need_init and not need_verify:
        return False

    new_lines = []
    inside_main = False       # 현재 main 함수 내부에 있는가?
    in_main_signature = False # main 함수 선언부를 찾은 상태
    brace_depth = 0           # 중괄호 깊이 (main 블록 추적용)

    for line in lines:
        # main 함수 선언부(예: "int main(")를 찾으면 상태 변경
        if not inside_main and re.search(r'\bmain\s*\(', line):
            in_main_signature = True

        # main 함수 선언부에서 '{'를 만난 경우: 블록 시작
        if in_main_signature and "{" in line:
            inside_main = True
            in_main_signature = False
            brace_depth += line.count("{") - line.count("}")
            new_lines.append(line)
            # main 함수 내부 시작 시 initialise_benchmark(); 삽입 (없으면)
            if need_init:
                # 현재 줄의 들여쓰기를 활용 (일반적으로 '{'가 단독으로 끝난 경우)
                m = re.match(r'^(\s*).*{\s*$', line)
                indent = m.group(1) + "    " if m else "    "
                new_lines.append(indent + "initialise_benchmark();\n")
            continue

        if inside_main:
            # return 문을 만났을 때 (주석이 아닌 실제 return)
            if need_verify and re.search(r'\breturn\b', line):
                # 바로 이전에 verify_benchmark(); 가 없는 경우 삽입 (들여쓰기도 맞춤)
                if not new_lines or "verify_benchmark();" not in new_lines[-1]:
                    indent_match = re.match(r'^(\s*)', line)
                    indent = indent_match.group(1) if indent_match else ""
                    new_lines.append(indent + "verify_benchmark();\n")
            new_lines.append(line)
            # 중괄호 깊이 갱신
            brace_depth += line.count("{") - line.count("}")
            if brace_depth <= 0:
                inside_main = False
            continue

        new_lines.append(line)

    new_content = "".join(new_lines)
    if new_content != content:
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
                    print(f"Modified: {filepath}")
                    modified_count += 1
    print(f"총 {modified_count}개의 파일 수정됨.")

if __name__ == "__main__":
    main()

