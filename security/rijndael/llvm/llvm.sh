clang --target=riscv64 -march=rv64g --sysroot=$RISCV/sysroot/usr aes.c aesxam.c -S
clang --target=riscv64 -march=rv64g --sysroot=$RISCV/sysroot/usr aes.c aesxam.c -c
riscv64-unknown-elf-objdump -d  -M no-aliases aes.o > aes.dump
riscv64-unknown-elf-objdump -d  -M no-aliases aesxam.o > aesxam.dump

python init_layout.py aes 1 
python init_layout.py aesxam 1000

clang --target=riscv64 -march=rv64g --sysroot=$RISCV/sysroot/usr init_aes.s init_aesxam.s -c
riscv64-unknown-elf-gcc -static -O0 -march=rv64g init_aes.o init_aesxam.o -o rijndael
riscv64-unknown-elf-objdump -d -M no-aliases rijndael > rijndael.dump

python cal_chksum.py rijndael
python insert.py rijndael init_aes.s > modified_aes.s
python insert.py rijndael init_aesxam.s > modified_aesxam.s

clang --target=riscv64 -march=rv64g --sysroot=$RISCV/sysroot/usr modified_aes.s modified_aesxam.s -c
riscv64-unknown-elf-gcc -static -O0 -march=rv64g modified_aes.o modified_aesxam.o -o rijndael
riscv64-unknown-elf-objdump -d -M no-aliases rijndael > rijndael.dump

