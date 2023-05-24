module Syntax.Do.Applicative

import public Language.Reflection

%default total

adoExpr : TTImp -> Elab TTImp
adoExpr expr = do
  logSugaredTerm "applicative-do.debug" 0 "adoExpr" expr
  pure expr -- a stub

export %macro
ado : a -> Elab a
ado x = quote x >>= adoExpr >>= check
