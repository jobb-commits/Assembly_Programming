ASM=nasm
LD=ld

all: hello

hello: hello.o
	$(LD) hello.o -o hello

hello.o: hello.asm
	$(ASM) -f elf64 hello.asm -o hello.o

clean:
	rm -f *.o hello
