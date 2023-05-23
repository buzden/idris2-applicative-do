module Runner

import BaseDir

import Test.Golden.RunnerHelper

RunScriptArg where
  runScriptArg = baseTestsDir ++ "/.pack_lock"

main : IO ()
main = goldenRunner
  [ "Documentation" `atDir` "docs"
  , "Functor" `atDir` "functor"
  , "Applicative" `atDir` "applicative"
  , "Monad" `atDir` "monad"
  ]
