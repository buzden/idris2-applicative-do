module Syntax.Do.Applicative

import public Language.Reflection

%default total

export
%macro
(>>=) : Applicative f => f a -> (a -> f b) -> Elab $ f b
(>>=) fa fb = Prelude.do
  fa <- quote fa
  fb <- quote fb
  logSugaredTerm "applicative-do.debug" 0 "fa" fa
  logSugaredTerm "applicative-do.debug" 0 "fb" fb
  fail "not implemented yet"

-- Just to make the `Applicative.do` syntax work
export
pure : Applicative f => a -> f a
pure = Prelude.pure

pair : Applicative f => a -> b -> f (a, b)
pair a b = Applicative.do
--  x <- a
--  y <- b
--  pure (x, y)
  pure (a, b)
