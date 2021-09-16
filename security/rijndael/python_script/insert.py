import re

# defining variable
chk_table = []
filepath = "../dump/rijndael.dump"

# getting the correct chk table
with open('../chk_table/' + "rijndael" + '.chk','r') as fp:
    chk_table = fp.readlines()

fp.close()
# Identify pattern
inst_code = re.compile(r"\b[a-f0-9]{0,5}977\b")
inst = re.compile(r"\b0x[a-f0-9]{0,4}977$")

# insert it to the chk instruction (predefined layout)
with open(filepath, "r+") as fp:

    for line in fp:

        if (inst_code.search(line) is not None):
            chk_val = chk_table.pop(0)[:-1]
            line = inst_code.sub(chk_val + "977", line)
            line = inst.sub(chk_val + "977",line)

        print(line[:-1])        

fp.close()

