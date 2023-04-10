# Wy-asm
personal delvings into assembly 

This github repository contains linux x86_64 assembly code.

This is assembled with a small script (`compile_asm.sh`) that uses
```bash
nasm -f elf64 "$file"

ld -s -o "${file%.*}" "${file%.*}.o"
```
to assemble and link the code into a binary.

If you wish to learn x86_64 assembly, I recommend this guide.

[Say hello to x86_64 Assembly](https://0xax.github.io/asm_1/)

you can also use `man` pages to learn about different linux syscalls, for example.

`man 2 write`

## Contents
- helloworld.asm - a simple hello world program that uses the linux syscall `write` to print to the standard output.