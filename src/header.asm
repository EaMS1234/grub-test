[global _start]
[extern kernel_main]

section .multiboot
dd 0x1badb002                 ; Magic number
dd 0b00000011                 ; flags
dd -(0x1badb002 + 0b00000011) ; checksum

section .bss
stack:
  resb 16384                  ; 16 KB stack
stack_top:

section .text
_start:
  mov esp, stack_top
  mov ebp, esp

  call kernel_main

  cli
  jmp $

