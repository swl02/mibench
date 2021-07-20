#read instruction first
counter = 0
skip = 0
checksum = 0
chk_for_bb = []
prev_inst = ""
gap = 0

#only branch for now
def is_cfi(instruction,splitted_instruction):

    if instruction.find('<') != -1 and len(splitted_instruction) == 5:
        return True

    return False

def is_label(instruction,splitted_instruction):
    if instruction.find('<') != -1 and len(splitted_instruction) == 2:
        return True

    return False

def is_inst(instruction,splitted_instruction):
    if instruction.find('<') != -1 and len(splitted_instruction) == 4:
        return True

    return False


with open('aes.dump','r') as fp:
    stream = fp.readlines()
    for inst in stream:
        
        #skipping header
        if (skip < 6):
            skip = skip + 1
            continue

        if (skip == 6):
            prev_inst = inst
            skip = skip + 1
            continue

        splitted_string = prev_inst.split()
        next_splitted_string = inst.split()

        ## skipping newline
        if (len(next_splitted_string) == 0):
            continue        

        # #detect all instruction
        if (len(next_splitted_string) == 4 or len(next_splitted_string) == 5):
            inst_code = int(next_splitted_string[1], 16)
            #doing checksum calculation
            upper_16 = inst_code >> 16
            lower_16 = inst_code & 0xffff
            checksum = checksum ^ lower_16 ^ upper_16


        print("turn " + str(counter) + "\n")
        print(splitted_string)
        print(next_splitted_string)

        if ((is_cfi(prev_inst,splitted_string) or is_label(prev_inst,splitted_string)) and (is_cfi(inst,next_splitted_string) or is_label(inst,next_splitted_string))) :

            if ((is_cfi(prev_inst,splitted_string) and is_label(inst,next_splitted_string) and gap == 1) != True):
                chk_for_bb.append(checksum)
                checksum = 0
                gap = 0
                prev_inst = inst

        # if counter == 20:
        #     break

        #debugging purpose
        gap = gap + 1        
        counter = counter + 1

with open('aes.chk','w') as fp:

    for chk in chk_for_bb:        
        fp.writelines(str(hex(chk)) + '\n')