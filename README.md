# grub-test

GRUB and multiboot experiments

## Overview
- `src/header.asm` contains the multiboot header, sets up a basic stack and calls the `kernel_main` function
- `src/main.c` contains the `kernel_main` function
- `src/entry.ld` is the linker script used to link `main.c` and `header.asm` into a single binary file
- `grub.cfg` sets up the entry in the GRUB screen.

## Requirements
- NASM (or another assembler for x86)
- GCC (or another compiler for C)
- QEMU (for running the kernel binary)
- GRUB (for generating the ISO file)

## Building
Run `make` to generate the `kernel.bin` file. Run `make build-iso` to generate the bootable ISO file.
