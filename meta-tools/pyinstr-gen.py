import opcode
import sys

with open(sys.argv[1], 'a+') as f:
    for k in opcode.opmap:
        f.write("{}\n".format(k))
