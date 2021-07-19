#read instruction first
counter = 0
skip = 0
checksum = 0
with open('aes.dump','r') as fp:
    stream = fp.readlines()
    for line in stream:

        if (skip < 6):
            skip = skip + 1
            continue

        splitted_string = line.split()

        #detect all instruction
        if (len(splitted_string) == 4):
            inst_code = int(splitted_string[1], 16)
            #doing checksum calculation
            upper_16 = inst_code >> 16
            lower_16 = inst_code & 0xffff
            checksum = checksum ^ lower_16 ^ upper_16
                        

        ##detect control flow instruction
        if line.find('<') != -1:
            print(line)
            print(hex(checksum))

        if counter == 10:
            break

        counter = counter + 1