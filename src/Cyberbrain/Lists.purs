-- | ffi files for purescript-lists are not implemented yet,
-- hence we make simple lists here.
module Cyberbrain.Lists where

import Cyberbrain.PyInfrastructure (builtins, failwith)
import Data.Foldable (fold)
import Data.Semigroup.Foldable (fold1)
import Data.Show (class Show)
import Data.Function.Uncurried

-- | cyberbrain list
data Cbl a = Cbcons {fst :: a, snd :: Cbl a} | Cbnil
