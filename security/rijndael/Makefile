rijndael: aes.c aes.h aestab.h aesxam.c Makefile
	# riscv64-unknown-elf-gcc -march=rv64g -static -O3 -o rijndael aes.c aesxam.c
	# riscv64-unknown-elf-gcc -march=rv64g -static -O3 -c aes.c aesxam.c 
	riscv64-unknown-elf-gcc -march=rv64g -static -O3 -S aes.c aesxam.c
	# riscv64-unknown-elf-gcc -march=rv64g -static -O3 aes.s -o rijndael aesxam.c

clean:
	rm -rf rijndael output*
	rm -rf *.s *.o *.dump *.out
 
#riscv64-unknown-elf-objdump -d -M no-aliases *.o