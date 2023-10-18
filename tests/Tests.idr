module Tests

import Test.Golden.RunnerHelper

main : IO ()
main = goldenRunner
  [ "Documentation" `atDir` "docs"
  , "Functor" `atDir` "functor"
  , "Applicative" `atDir` "applicative"
  , "Monad" `atDir` "monad"
  ]
