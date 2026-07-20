# Task 1 - Assembly Environment and Digital Representation Toolkit

## Objective

The purpose of this task was to demonstrate the basic assembly programming environment and illustrate how data is represented in memory using bytes, words, and doublewords.

## Tools Used

- Ubuntu 24.04
- NASM
- GNU Linker (ld)
- GDB
- objdump

## Building the Programs

Compile:

```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello

nasm -f elf64 -g -F dwarf data_representation.asm -o data_representation.o
ld data_representation.o -o data_representation
```

Run:

```bash
./hello
./data_representation
```

## Memory Inspection

GDB was used to inspect the variables stored in memory.

The byte value containing the character 'A' appeared as hexadecimal value 0x41.

The word value (12345) occupied two bytes.

The doubleword value (123456789) occupied four bytes.

The inspection also demonstrated little-endian byte ordering used by x86-64 processors.

objdump was also used to examine the contents of the .data section of the executable.

## Conclusion

This task demonstrated how assembly language stores and manipulates different data sizes in memory and provided practical experience using Linux debugging tools.
