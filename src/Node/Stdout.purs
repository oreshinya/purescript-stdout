module Node.Stdout (log) where

import Prelude

import Effect (Effect)
import Node.Encoding (Encoding(UTF8))
import Node.Process (stdout)
import Node.Stream (writeString)
import Unsafe.Coerce (unsafeCoerce)



log :: String -> Effect Unit
log str = unsafeCoerce $ void $ writeString stdout UTF8 (str <> "\n") $ pure unit
