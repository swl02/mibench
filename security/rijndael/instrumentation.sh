#!/bin/bash
riscv64-unknown-elf-gcc -static -O3 -S aes.c aesxam.c
riscv64-unknown-elf-gcc -static -O3 -c aes.s aesxam.s 
riscv64-unknown-elf-objdump -d -M no-aliases aes.o > aes.dump
riscv64-unknown-elf-objdump -d -M no-aliases aesxam.o > aesxam.dump
rm -rf *.o

# moving to the correct directory
mv aes.dump dump/
mv aesxam.dump dump/
mv aes.s assembly_folder/
mv aesxam.s assembly_folder/

# instrumentation procedure
# getting the correct layout
cd python_script/
python cal_chksum.py aes
python init_layout.py aes
python cal_chksum.py aesxam
python init_layout.py aesxam

# compiling to obtain correct memory
cd ..
cd assembly_folder/
riscv64-unknown-elf-gcc -static -O3 -c modified_aes.s
riscv64-unknown-elf-objdump -d -M no-aliases modified_aes.o > aes.dump
riscv64-unknown-elf-gcc -static -O3 -c modified_aesxam.s
riscv64-unknown-elf-objdump -d -M no-aliases modified_aesxam.o > aesxam.dump
mv aes.dump ../dump/
mv aesxam.dump ../dump/
rm -rf *.o

# # recalculating
cd ..
cd python_script/
python cal_chksum.py aes
python init_layout.py aes
python cal_chksum.py aesxam
python init_layout.py aesxam

# # compiling
cd ..
riscv64-unknown-elf-gcc -static -O3 assembly_folder/modified_aes.s assembly_folder/modified_aesxam.s -o rijndael

# placing rijndael and it's dump at correct place
riscv64-unknown-elf-objdump -d -M no-aliases rijndael > rijndael.dump
mv rijndael emulator/output/
mv rijndael.dump dump/

