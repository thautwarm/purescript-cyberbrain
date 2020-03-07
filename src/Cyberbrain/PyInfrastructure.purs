module Cyberbrain.PyInfrastructure where

import Prelude

foreign import failwith :: String -> forall a. a

foreign import builtins :: forall r. { | r }

foreign import operator :: forall r. { | r }

foreign import coerce :: forall a b. a -> b

data Buffer elt a

data Pair a b

foreign import _0 :: forall a b. Pair a b -> a

foreign import _1 :: forall a b. Pair a b -> b

foreign import runBuffer :: forall elt. Array elt -> forall a. Buffer elt a -> Pair a (Array elt)

foreign import map_buffer :: forall a b. (a -> b) -> forall elt. Buffer elt a -> Buffer elt b

foreign import apply_buffer :: forall a b elt. Buffer elt (a -> b) -> Buffer elt a -> Buffer elt b

foreign import pure_buffer :: forall a. a -> forall elt. Buffer elt a

foreign import bind_buffer :: forall elt a. Buffer elt a -> forall b. (a -> Buffer elt b) -> Buffer elt b

foreign import size :: forall elt. Buffer elt Int

foreign import get :: Int -> forall elt. Buffer elt elt

foreign import set :: Int -> forall elt. elt -> Buffer elt Unit

foreign import contains :: forall elt. elt -> Buffer elt Boolean

foreign import push :: forall elt. elt -> Buffer elt Unit

foreign import append :: forall elt. Array elt -> Buffer elt Unit

foreign import pop :: forall elt. Buffer elt elt

instance functorBuffer :: Functor (Buffer elt) where
  map = map_buffer

instance applyBuffer :: Apply (Buffer elt) where
  apply = apply_buffer

instance applicativeBuffer :: Apply (Buffer elt) => Applicative (Buffer elt) where
  pure = pure_buffer

instance bindBuffer :: Bind (Buffer elt) where
  bind = bind_buffer
