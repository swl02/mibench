import sys

def write_inst(inst ,new_inst):
    return inst + "\t.word\t"+ str(new_inst)[:-1] + "977" +"\n" 

def is_cfi(inst):
    if (inst.find("jal") != -1 or
        inst.find("jalr") != -1 or
        inst.find("beq") != -1 or
        inst.find("bne") != -1 or
        inst.find("bltu") != -1 or
        inst.find("bgeu") != -1 or
        inst.find("blt") != -1 or
        inst.find("bleu") != -1 or
        inst.find("blez") != -1 or
        inst.find("bgez") != -1 or
        inst.find("j") != -1 or
        inst.find("call") != -1 or
        inst.find("jr") != -1 or
        inst.find("ret") != -1 or
        inst.find("bgtu") != -1 or
        inst.find("bge") != -1) :
        return True
    
    return False

def is_label(inst):
    if inst.find(':') != -1:
        return True
    
    return False

def is_data_seg(inst):
    if (inst.find(".dword") != -1 or
        inst.find(".size") != -1 or
        inst.find(".text") != -1 or
        inst.find(".option") != -1 or
        inst.find(".globl") != -1 or
        inst.find(".file") != -1 or
        inst.find(".byte") != -1 or
        inst.find(".align") != -1 or
        inst.find(".section") != -1 or
        inst.find(".type") != -1):
        return True

    return False

counter = 0
chk = []
gap = 0
prev_inst = ""
modified_stream = []
with open('../chk_table/' + sys.argv[1] + '.chk','r') as fp:
    chk = fp.readlines()
chk_counter = 0
with open('../assembly_folder/' + sys.argv[1] + '.s','r') as fp:
    stream = fp.readlines()

    for inst in stream:

        # enable integrity checking (assert csr)
        if counter == 7: 
            prev_inst = prev_inst + "\tcsrwi\t0xff,1\n"
        
        # adding chk instruction
        if chk_counter < len(chk) and not is_data_seg(inst):
            if is_label(prev_inst) or is_cfi(prev_inst):
                if not (is_label(inst) and is_cfi(prev_inst)):         
                    prev_inst = write_inst(prev_inst,chk[chk_counter])
                    chk_counter = chk_counter + 1

        # disable integrity checking (deassert csr)
        if inst.find("ret") != -1 or inst.find("jr") != -1:
            prev_inst = prev_inst + "\tcsrwi\t0xff,0\n"
        
        #adding it to the modified one
        modified_stream.append(prev_inst)

        #iterating
        prev_inst = inst
        counter = counter + 1


with open('../assembly_folder/modified_'+ sys.argv[1] + '.s','w') as fp:
    fp.writelines(modified_stream)


