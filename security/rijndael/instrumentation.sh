# !/bin/bash
riscv64-unknown-elf-gcc -static -O0 -march=rv64g -S aes.c aesxam.c
riscv64-unknown-elf-gcc -static -O0 -march=rv64g -c aes.s aesxam.s 
riscv64-unknown-elf-objdump -d  -M no-aliases aes.o > aes.dump
riscv64-unknown-elf-objdump -d  -M no-aliases aesxam.o > aesxam.dump

# moving to the correct directory
mv aes.dump dump/
mv aesxam.dump dump/
mv aes.s assembly_folder/
mv aesxam.s assembly_folder/

# instrumentation procedure
cd python_script/
python init_layout.py aes 0 
python init_layout.py aesxam 1000

# # compiling
cd ..
riscv64-unknown-elf-gcc -static -O0 -march=rv64g assembly_folder/modified_aes.s assembly_folder/modified_aesxam.s -o rijndael

# placing rijndael and it's dump at correct place
riscv64-unknown-elf-objdump -d -M no-aliases rijndael > rijndael.dump
mv rijndael emulator/output/
mv rijndael.dump dump/

cd python_script/
python cal_chksum.py rijndael
python insert.py rijndael aes > modified_aes.s
python insert.py rijndael aesxam > modified_aesxam.s

mv modified_aes.s ../assembly_folder/
mv modified_aesxam.s ../assembly_folder/

cd ..
riscv64-unknown-elf-gcc -static -O0 -march=rv64g assembly_folder/modified_aes.s assembly_folder/modified_aesxam.s -o rijndael
riscv64-unknown-elf-objdump -d -M no-aliases rijndael > rijndael.dump
mv rijndael emulator/output/
mv rijndael.dump emulator/output/


