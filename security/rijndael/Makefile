rijndael: aes.c aes.h aestab.h aesxam.c Makefile
	riscv64-unknown-elf-gcc -static -O0 -o rijndael aes.c aesxam.c
	#gcc -static -o rijndael aes.c aesxam.c

clean:
	rm -rf rijndael output* *.o
 
#riscv64-unknown-elf-objdump -d -M no-aliases *.o
