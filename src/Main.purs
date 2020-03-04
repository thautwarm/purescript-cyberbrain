module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Cyberbrain.PyInstructions as PyInstr

main :: Effect Unit
main = do
  log "🍝"
  log $ show PyInstr.CALL_FUNCTION_KW
