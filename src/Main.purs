module Main where

import Prelude

import Cyberbrain.PyInfrastructure (Buffer, _0, _1, append, contains, get, pop, push, runBuffer, set)
import Effect (Effect)
import Effect.Class.Console (log)



make :: Buffer Int Boolean
make = do
  push 1
  push 2
  a <- pop
  append [a, a]
  e0 <- get 0
  set 0 (e0 + 2)
  contains (e0 + 2)

main :: Effect Unit
main = do
  let tp = (runBuffer [] make)
  log $ show (_0 tp)
  log $ show (_1 tp)
