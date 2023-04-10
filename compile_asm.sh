#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

file=$1

nasm -f elf64 "$file"

ld -s -o "${file%.*}" "${file%.*}.o"
