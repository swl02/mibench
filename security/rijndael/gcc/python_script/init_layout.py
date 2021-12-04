import sys
import random

def write_inst(inst ,new_inst):
    return inst + "\t.word\t"+ new_inst + "977" +"\n" 

def is_cfi(inst):
    if (inst.find("jal") != -1 or
        inst.find("jalr") != -1 or
        inst.find("beq") != -1 or
        inst.find("bne") != -1 or
        inst.find("ble") != -1 or
        inst.find("bgt") != -1 or
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

def is_main(inst):
    if (inst.find('main:') != -1): #or
        # inst.find('fillrand:') != -1 or
        # inst.find('encrypt:') != -1 or
        # inst.find('decrypt:') != -1 or
        # inst.find('set_key:') != -1 or
        # inst.find('encfile:') != -1 or
        # inst.find('decfile:') != -1 ):

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
        inst.find(".string") != -1 or
        inst.find(".comm") != -1 or
        inst.find(".type") != -1):
        return True

    return False

def is_libc_fn(fn_name):
    if (fn_name == "fseek" or 
        fn_name == "fgetpos" or
        fn_name == "fwrite" or
        fn_name == "fread" or
        fn_name == "printf" or
        fn_name == "fclose" or
        fn_name == "fopen" or
        fn_name == "puts" or
        fn_name == "__locale_ctype_ptr" or
        fn_name == "fgetpos"):
        return True
            
    return False

counter = 0
chk = []
gap = 0
prev_inst = ""
modified_stream = []
# with open('../chk_table/' + sys.argv[1] + '.chk','r') as fp:
#     chk = fp.readlines()
chk_counter = int(sys.argv[2])
with open('../assembly_folder/' + sys.argv[1] + '.s','r') as fp:
    stream = fp.readlines()

    for inst in stream:

        # enable integrity checking (assert csr)
        if is_main(prev_inst) : 
            prev_inst = prev_inst + "\tcsrwi\t0xff,1\n"
        
        #call subroutine for shared library glibc etc
        if prev_inst.find("call")  != -1:
            call,fn_name = prev_inst.split()
            if  is_libc_fn(fn_name):
                # print(prev_inst)
                prev_inst = "\tcsrwi\t0xff,0\n" + prev_inst + "\tcsrwi\t0xff,1\n"

        if not (is_data_seg(inst)):            
            # adding chk instruction
            if is_label(prev_inst) or is_cfi(prev_inst):
                if not (is_label(inst) and is_cfi(prev_inst)): 
                    if (prev_inst.find(".LC0") == -1):                        
                        prev_inst = write_inst(prev_inst,hex(chk_counter))
                        chk_counter = chk_counter + 1
            
            if (is_label(inst) and not(is_cfi(prev_inst) or is_data_seg(prev_inst))):
                # print(prev_inst)
                prev_inst =  prev_inst + '\tj\t' + inst[:-2] + '\n'



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


