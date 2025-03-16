#!/bin/bash

for file in *.c; do
    sed -i 's|^//\s*\(#include.*\)|\1|' "$file"
done

