module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

-- named number logic
import NamedNumber(namedNumber)

-- named numbers dictionary
import NamedNumbers(names)

-- setup namedNumber
namedNumber' :: Number -> String
namedNumber' = namedNumber names

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ namedNumber' 12.0
  log $ namedNumber' 220.0
  log $ namedNumber' 3200.0
  log $ namedNumber' 42000.0
  log $ namedNumber' 520000.0
  log $ namedNumber' 6200000.0
  log $ namedNumber' 72000000.0
  log $ namedNumber' 820000000.0
  log $ namedNumber' 9200000000.0
  log $ namedNumber' 12000000000.0
  log $ namedNumber' 220000000000.0
