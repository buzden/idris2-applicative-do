module Syntax.Do.Applicative

import public Language.Reflection

%default total

export %macro
ado : a -> Elab a
ado = pure -- a stub
