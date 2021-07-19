counter = 0
with open('aes.s','r') as fp:
    stream = fp.readlines()

    for line in stream:
        if line.find(':') != -1 or line.find('.L') != -1:
            print('a')
            print(line)
            line = line + "chk\n"
            stream[counter] = line

        counter = counter + 1 


with open('modified_aes.s','w') as fp:
    fp.writelines(stream)


