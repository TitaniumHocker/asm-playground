build:
	nasm -f elf64 -g -l main.lst main.asm
	ld -Map main.map -o main main.o
clean:
	rm -f main main.o main.lst main.map
