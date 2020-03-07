import sys
import json
escape = json.encoder.encode_basestring
with open(sys.argv[1]) as f:
    lines = f.readlines()

instrs = sorted(
    {line for line in lines[1:] for line in [line.strip()] if line.isidentifier()}
)

module = """
module Cyberbrain.PyInstructions where
import Data.Generic.Rep
import Data.Generic.Rep.Show
import Data.Show

data PyInstr
    = {}

instance showPyInstr :: Show PyInstr where
    {}
""".format(
    "\n    | ".join(instrs),
    "\n    ".join("show {0} = {1}".format(ins, escape(ins)) for ins in instrs),
)

with open("../src/Cyberbrain/PyInstructions.purs", "w") as f:
    f.write(module.strip())
