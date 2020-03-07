import dis

def is_jump(x):
    opcode = dis.opmap[x]
    return opcode in dis.hasjabs or opcode in dis.hasjrel
    