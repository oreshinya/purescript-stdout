module Node.Stdout (log) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Node.Encoding (Encoding(UTF8))
import Node.Process (stdout)
import Node.Stream (writeString)
import Unsafe.Coerce (unsafeCoerce)



log :: forall e. String -> Eff (console :: CONSOLE | e) Unit
log str = unsafeCoerce $ void $ writeString stdout UTF8 (str <> "\n") $ pure unit
