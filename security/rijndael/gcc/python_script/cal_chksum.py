import sys

# variables
counter = 0
skip = 0
checksum = 0
chk_for_bb = []
prev_inst = ""
gap = 0
dummy_chk = []
start = 0
def Expand_Inst(inst,inst_name):

    rs1p = UInt(1,2) + Extract(inst,7,3)
    rs2p = UInt(1,2) + Extract(inst,2,3)
    rs2 = Extract(inst,2,5)
    rd = Extract(inst,7,5)
    addi4spnImm = Extract(inst,7,4) + Extract(inst,11,2) + Extract(inst,5,1) + Extract(inst,6,1) + UInt(0,2)
    lwImm = Cat(Extract(inst,5,1),Extract(inst,10,3),Extract(inst,6,1),UInt(0,2))
    ldImm = Cat(Extract(inst,5,2),Extract(inst,10,3),UInt(0,3))
    lwspImm = Extract(inst,2,2) + Extract(inst,12,1) + Extract(inst,4,3) + UInt(0,2)
    ldspImm = Extract(inst,2,3) + Extract(inst,12,1) + Extract(inst,4,2) + UInt(0,3)
    swspImm = Cat(Extract(inst,7,2),Extract(inst,9,4),UInt(0,2))
    sdspImm = Cat(Extract(inst,7,3),Extract(inst,10,3),UInt(0,3))
    luiImm = Fill(inst,15,12) + Extract(inst,2,5) + UInt(0,12)
    addi16spImm = Fill(inst,3,12) + Extract(inst,3,2) + Extract(inst,5,1) + Extract(inst,2,1) + Extract(inst,6,1) + UInt(0,4)
    addiImm = Fill(inst,7,12) + Extract(inst,2,5)
    jImm = Cat(Fill(inst,10,12),Extract(inst,8,1),Extract(inst,9,2),Extract(inst,6,1),Extract(inst,7,1),Extract(inst,2,1),Extract(inst,11,1),Extract(inst,3,3),UInt(0,1))  
    bImm = Cat(Fill(inst,5,12),Extract(inst,5,2),Extract(inst,2,1),Extract(inst,10,2),Extract(inst,3,2),UInt(0,1))
    shamt = Extract(inst,12,1) + Extract(inst,2,5)
    x0 = UInt(0,5)
    ra = UInt(1,5)
    sp = UInt(2,5)

    if (inst_name.find("c.lwsp") != -1):
        return Cat(lwspImm,sp,UInt(2,3),rd,UInt(0x03,7))
    elif (inst_name.find("c.ldsp") != -1):
        return Cat(ldspImm,sp,UInt(3,3),rd,UInt(0x03,7))
    elif (inst_name.find("c.swsp") != -1):
        return Cat(bin(swspImm >> 5)[2:],rs2,sp,UInt(2,3),Extract(swspImm,0,5),UInt(0x23,7))
    elif (inst_name.find("c.sdsp") != -1):
        return Cat(bin(sdspImm >> 5)[2:],rs2,sp,UInt(3,3),Extract(sdspImm,0,5),UInt(0x23,7))
    elif (inst_name.find("c.lw") != -1):
        return Cat(bin(lwImm)[2:],rs1p,UInt(2,3),rs2p,UInt(0x03,7))
    elif (inst_name.find("c.ld") != -1):
        return Cat(bin(ldImm)[2:],rs1p,UInt(3,3),rs2p,UInt(0x03,7))
    elif (inst_name.find("c.sw") != -1):
        return Cat(bin(lwImm >> 5)[2:],rs2p,rs1p,UInt(2,3),Extract(lwImm,0,5),UInt(0x23,7))
    elif (inst_name.find("c.sd") != -1):
        return Cat(bin(ldImm >> 5)[2:],rs2p,rs1p,UInt(3,3),Extract(ldImm,0,5),UInt(0x23,7))
    elif (inst_name.find("c.j") != -1):
        return Cat(Extract(jImm,20,1),Extract(jImm,1,10),Extract(jImm,11,1),Extract(jImm,12,8),x0,UInt(0x6f,7))
    elif (inst_name.find("c.jal") != -1):    
        return Cat(Extract(jImm,20,1),Extract(jImm,1,10),Extract(jImm,11,1),Extract(jImm,12,8),ra,UInt(0x6f,7))
    elif (inst_name.find("c.jr") != -1):    
        return Cat(Extract(jImm,0,11),rd,UInt(0,3),x0,0x67)
    elif (inst_name.find("c.jalr") != -1): 
        return Cat(Extract(jImm,0,11),rd,UInt(0,3),ra,0x67)
    elif (inst_name.find("c.beqz") != -1):
        return Cat(Extract(bImm,12,1),Extract(bImm,5,6),x0,rs1p,UInt(0,3),Extract(bImm,1,4),Extract(bImm,11,1),UInt(0x63,7))    
    elif (inst_name.find("c.bnez") != -1):
        return Cat(Extract(bImm,12,1),Extract(bImm,5,6),x0,rs1p,UInt(1,3),Extract(bImm,1,4),Extract(bImm,11,1),UInt(0x63,7))    
    elif (inst_name.find("c.li") != -1):
        return Cat(addiImm,x0,UInt(0,3),rd,UInt(0x13,7))
    elif (inst_name.find("c.lui") != -1):
        opc = ""
        addi16sp_opc = ""
        addi16sp = ""
        if (addiImm.find("1") != -1):
            opc = UInt(0x37,7)
            addi16sp_opc = UInt(0x13,7)
        else:
            opc = UInt(0x3f,7)
            addi16sp_opc = UInt(0x1f,7)

        addi16sp = Cat(addi16spImm,rd,UInt(0,3),rd,addi16sp_opc)

        me = Cat(Extract(int(luiImm,2),12,20),rd,opc)

        if (rd == x0 or rd == sp):
            return addi16sp
        else:
            return me

    elif (inst_name.find("c.addiw") != -1):
        opc = ""
        if (rd.find("1") != -1):
            opc = UInt(0x1b,7)
        else:
            opc = UInt(0x1f,7)
        return Cat(addiImm,rd,UInt(0,3),rd,opc)
    elif (inst_name.find("c.addi") != -1):
        return Cat(addiImm,rd,UInt(0,3),rd,UInt(0x13,7))
    elif (inst_name.find("c.addi16sp") != -1):
        addi16sp_opc = ""
        addi16sp = ""
        if (addiImm.find("1") != -1):
            addi16sp_opc = UInt(0x13,7)
        else:
            addi16sp_opc = UInt(0x1f,7)

        return Cat(addi16spImm,rd,UInt(0,3),rd,addi16sp_opc)
    elif (inst_name.find("c.addi4spn") != -1):
        opc = ""
        if (Extract(inst,5,8).find("1") != -1):
            opc = UInt(0x13,7)
        else:
            opc = UInt(0x1f,7)
        return Cat(addi4spnImm,sp,UInt(0,3),rs2p,opc) 
    elif (inst_name.find("c.slli") != -1):
        return Cat(shamt,rd,UInt(1,3),rd,UInt(0x13,7))
    elif (inst_name.find("c.mv") != -1): 
        return Cat(rs2,x0,UInt(0,3),rd,UInt(0x33,7))        
    elif (inst_name.find("c.add") != -1 or inst_name.find("c.addw") != -1):
        rd = Extract(inst,7,5) 
        return Cat(rs2,rd,UInt(0,3),rd,UInt(0x3b,7))  
    elif (inst_name.find("c.sub") != -1): 
        return Cat("0100000",rs2,rd,UInt(0,3),rd,UInt(0x33,7))        
    elif (inst_name.find("c.nop") != -1): 
        return 0x13
    elif (inst_name.find("c.ebreak") != -1): 
        return 0b000000000000100000000000001110011 
    elif (inst_name.find("c.andi") != -1): 
        return Cat(addiImm, rs1p, UInt(7,3), rs1p, UInt(0x13,7))
    elif (inst_name.find("c.srli") != -1): 
        return Cat(shamt, rs1p, UInt(5,3), rs1p, UInt(0x13,7))
    elif (inst_name.find("c.srai") != -1): 
        srli = Cat(shamt, rs1p, UInt(5,3), rs1p, UInt(0x13,7))
        return srli | 1 << 30
    elif (inst_name.find("c.xor") != -1):
        rdp = Extract(inst,7,3)
        rs2p = Extract(inst,2,3)
        return Cat(rs2p,rdp,"100",rdp,"0110011")
    elif (inst_name.find("c.and") != -1):
        rdp = Extract(inst,7,3)
        rs2p = Extract(inst,2,3)
        return Cat(rs2p,rdp,"111",rdp,"0110011")
    elif (inst_name.find("c.or") != -1):
        rdp = Extract(inst,7,3)
        rs2p = Extract(inst,2,3)
        return Cat(rs2p,rdp,"110",rdp,"0110011")
    elif (inst_name.find("c.fld") != -1):    
        return Cat(bin(ldImm)[2:], rs1p, UInt(3,3), rs2p, UInt(0x07,7))
    else:
        print("ABORT !!! " + inst_name + " with code " + str(inst_code) + " not implemented \n")
        exit(-1)
        return ""

def Extract(inst,start,number):
    inst = (inst >> start) & (2 ** number - 1)
    return bin(inst)[2:].zfill(number)
     
def UInt(val,num):
    return bin(val)[2:].zfill(num)

def Fill(inst,num,val):
    pos_val = Extract(inst,val,1)

    filled_str = ""
    for i in range(num):
        filled_str = filled_str + pos_val

    return filled_str

def Cat(*arg):
    bin_str = ""
    for x in arg:
        bin_str = bin_str + x

    return int(bin_str,2)

def is_cfi(instruction,splitted_instruction):
    if (instruction.find("jal") != -1 or
        instruction.find("jalr") != -1 or
        instruction.find("beq") != -1 or
        instruction.find("bne") != -1 or
        instruction.find("bltu") != -1 or
        instruction.find("bgeu") != -1 or
        instruction.find("blt") != -1 or
        instruction.find("bleu") != -1 or
        instruction.find("j") != -1 or
        instruction.find("jr") != -1 or
        instruction.find("ret") != -1 or
        instruction.find("bgtu") != -1 or
        instruction.find("bge") != -1) :
        return True

    return False

def is_label(instruction,splitted_instruction):
    if instruction.find('<') != -1 and len(splitted_instruction) == 2:
        return True

    return False

def is_inst(instruction,splitted_instruction):
    if instruction.find('<') != -1 and len(splitted_instruction) != 2:
        return True

    return False

def is_block(splitted_instruction):
    if len(splitted_instruction) == 3:
        return True


    return False

with open('../dump/' + sys.argv[1] + '.dump','r') as fp:
    stream = fp.readlines()
    for inst in stream:
        
        ## skipping header
        if (skip < 6):
            skip = skip + 1
            continue

        # starting 
        if (skip == 6):
            prev_inst = inst
            skip = skip + 1
            continue

        splitted_string = prev_inst.split()
        next_splitted_string = inst.split()

        ## skipping newline and Header Information
        if (len(next_splitted_string) == 0 or next_splitted_string[0] == "Disassembly"):
            continue        
        
        # #detect all instruction
        if (len(next_splitted_string) > 2):
            # need to ignore chk instruction
            # need to ignore chk enabling csr
            if (next_splitted_string[2].find("977") == -1 and next_splitted_string[1].find("0ff0d073") == -1):
                inst_code = int(next_splitted_string[1], 16)
                # print(next_splitted_string)
                
                if (next_splitted_string[2].find("c.") != -1):
                    inst_code = Expand_Inst(inst_code,next_splitted_string[2])
                    # print(hex(inst_code))

                # doing checksum calculation
                upper_16 = inst_code >> 16
                lower_16 = inst_code & 0xffff
                checksum = checksum ^ lower_16 ^ upper_16
                
            elif next_splitted_string[2].find("977") != -1 :
                # special case
                if next_splitted_string[2] == "0x977":               
                    dummy_chk.append("0x0977")
                else:
                    # use dummy value as marker
                    dummy_chk.append(next_splitted_string[2])
                
                scope = 1


        # # identify basic block via label and control flow instruction
        # if ((is_cfi(prev_inst,splitted_string) or is_label(prev_inst,splitted_string)) and (is_cfi(inst,next_splitted_string) or is_label(inst,next_splitted_string))) :
        #     if ((is_cfi(prev_inst,splitted_string) and is_label(inst,next_splitted_string) and gap == 1) != True):
                
        #         if scope == 1:
        #             if (checksum == 0x9c37):
        #                 print("fuck\n")

        #             chk_for_bb.append(checksum)
                
        #             scope = 0
        #             checksum = 0
        #             gap = 0
        #             prev_inst = inst

        # #debugging purpose + identify bb pattern
        # gap = gap + 1        
        # counter = counter + 1

        # identify basic block via the 0x977
        # print(splitted_string)
        if (is_block(next_splitted_string) or (len(next_splitted_string) == 2)):
            if start == 1:
                chk_for_bb.append(checksum)
            start = 1
            checksum = 0
            prev_inst = inst


with open('../chk_table/' + sys.argv[1] + '.chk','w') as fp:
    counter = 0

    ## 0 for saving checksum table only
    ## 1 for saving checksum table as well as do marking
    # if sys.argv[2] == "0":
    #     for chk in chk_for_bb:
    #         fp.writelines(str(hex(chk) + '\n'))
    # elif sys.argv[2] == "1":
    for counter in range(len(dummy_chk)):        
        fp.writelines(str(hex(chk_for_bb[counter])) + " " + dummy_chk[counter] + '\n')

