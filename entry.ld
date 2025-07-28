ENTRY(_start)
SECTIONS {
  . = 2M;

  .text : {
    *(.multiboot)
    *(.text)
  }

  .bss : {
    *(.bss)
  }
}

