rijndael: aes.c aes.h aestab.h aesxam.c Makefile
	riscv64-unknown-elf-gcc -march=rv64g -static -o rijndael aes.c aesxam.c
	#gcc -static -o rijndael aes.c aesxam.c

clean:
	rm -rf rijndael output*
 
#riscv64-unknown-elf-objdump -d -M no-aliases *.o
