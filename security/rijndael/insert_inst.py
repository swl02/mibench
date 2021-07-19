reader = open('aes.s','rw+')
count = 0
try:
    # Further file processing goes here
    while True:
        # Get next line from file
        line = reader.readline()
        # if line is empty
        # end of file is reached
        if not line or count == 10:
            break

        ## inserting check on next line
        if line.find(':') != -1 or line.find('.L') != -1:
            
            #.word   0x0bbe4977 =  chk 0x0bbe4
            print(line)
            reader.writelines(".word   0x0bbe4977\r\n")
            
        count = count + 1

         
            

finally:
    reader.close()

## Problems
# how do I know which value to insert for chk instruction