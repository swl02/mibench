cp emulator/emulator-freechips.rocketchip.system-DefaultConfig  .
./emulator-freechips.rocketchip.system-DefaultConfig +verbose pk -s rijndael input_small.asc output_small.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321 3>&  1 1>&2 2>&3 | spike-dasm > rijndael.out
