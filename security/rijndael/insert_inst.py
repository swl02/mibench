def write_inst(inst ,new_inst):
    return "\t.word\t"+ str(new_inst)[:-1] + "977" +"\n" + inst

def is_cfi(inst):
    if (inst.find("jal") != -1 or
        inst.find("jalr") != -1 or
        inst.find("beq") != -1 or
        inst.find("bne") != -1 or
        inst.find("bltu") != -1 or
        inst.find("bgeu") != -1 or
        inst.find("blt") != -1 or
        inst.find("bge") != -1) :
        return True
    
    return False

def is_label(inst):
    if inst.find(':') != -1:
        return True
    
    return False

counter = 0
chk = []
gap = 0
prev_inst = ""

with open('aes.chk','r') as fp:
    chk = fp.readlines()
chk_counter = 0
with open('aes.s','r') as fp:
    stream = fp.readlines()

    for inst in stream:
        
        # if (chk_counter >= len(chk)):
        #     break

        if is_label(prev_inst):
            inst = write_inst(inst,chk[chk_counter])
            chk_counter = chk_counter + 1
            stream[counter] = inst

        if is_cfi(prev_inst) and not is_label(inst):
            inst = write_inst(inst,chk[chk_counter])
            chk_counter = chk_counter + 1
            stream[counter] = inst

        prev_inst = inst

        counter = counter + 1

with open('modified_aes.s','w') as fp:
    fp.writelines(stream)


