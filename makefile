all: build clean run

header.o:
	nasm -f elf32 header.asm -o header.o

main.o:
	gcc -fno-pie -m32 -ffreestanding -c main.c -o main.o 

build: header.o main.o
	gcc -m32 -T entry.ld -o kernel.bin -ffreestanding -O2 -nostdlib header.o main.o -lgcc

clean: build
	rm *.o

run: build
	qemu-system-x86_64 -kernel kernel.bin

