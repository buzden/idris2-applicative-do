<!-- idris
module README

import Syntax.Do.Applicative

%default total
-->

# Applicative `do`

## `do`-syntax for `Applicative` and `Functor`

```idris
pair : Applicative f => a -> b -> f (a, b)
pair a b = ado $ do
  x <- a
  y <- b
  pure (x, y)
```

## `Applicative` optimisation for monadic expressions

```idris
opt : Monad m =>
      {0 c : _ -> _} ->
      (a -> m $ c a) -> (forall a. c a -> b -> d) ->
      m a -> m b -> m d
opt f g a b = ado $ do
  x <- a
  y <- f x
  z <- b
  pure $ g y z
```

being equivalent to

```idris
opt f g a b = do
  x <- a
  [| g (f x) b |]
```

Maybe, a reordering flag should be considered,
which allows to change the order of "effects" arbitrarily.
