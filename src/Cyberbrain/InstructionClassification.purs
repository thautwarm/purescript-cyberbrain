module Cyberbrain.InstructionClassification where

import Cyberbrain.PyInstructions

isJump :: PyInstr -> Boolean
isJump it = case it of
  FOR_ITER -> false
  _ -> true
