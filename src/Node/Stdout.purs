module Node.Stdout (log) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Node.Encoding (Encoding(UTF8))
import Node.Process (stdout)
import Node.Stream (writeString)



log :: forall e. String -> Eff (console :: CONSOLE, err :: EXCEPTION | e) Unit
log str = void $ writeString stdout UTF8 (str <> "\n") $ pure unit
