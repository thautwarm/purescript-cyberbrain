import sys
import json

with open(sys.argv[1]) as f:
    lines = f.readlines()

module = """
module Cyberbrain.PyInstructions where
import Data.Generic.Rep
import Data.Generic.Rep.Show
import Data.Show

data PyInstr
    = {}

derive instance genPyInstr :: Generic PyInstr _
instance showPyInstr :: Show PyInstr where
    show = genericShow
""".format('\n    | '.join({line for line in lines[1:] for line in [line.strip()] if line.isidentifier()}))

with open("../src/Cyberbrain/PyInstructions.purs", 'w') as f:
    f.write(module.strip())
