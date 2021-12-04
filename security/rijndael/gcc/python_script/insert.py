import re
import sys

# defining variable
chk_table = []
filepath = '../assembly_folder/modified_' + sys.argv[2] + '.s'

# getting the correct chk table
with open('../chk_table/' + sys.argv[1] + '.chk','r') as fp:
    chk_table = fp.readlines()

fp.close()

# Identify pattern
inst = re.compile(r"\b0x[a-f0-9]{0,4}977$")

# insert it to the chk instruction (predefined layout)


with open(filepath, "r+") as fp:

    for line in fp:
        if (inst.search(line) is not None):

            chksum = ""
            marker = ""

            directive,dummy_inst = line.split()

            for chk_entry in chk_table:
                chksum,marker = chk_entry.split()
                if (marker == dummy_inst):
                    break

            line = inst.sub(chksum + marker[-3:],line)
        print(line[:-1])

fp.close()

