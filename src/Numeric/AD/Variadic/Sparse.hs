-----------------------------------------------------------------------------
-- |
-- Copyright   :  (c) Edward Kmett 2010-2014
-- License     :  BSD3
-- Maintainer  :  ekmett@gmail.com
-- Stability   :  experimental
-- Portability :  non-portable
--
-- Variadic combinators for sparse forward mode automatic differentiation.
--
-- Unfortunately, variadicity comes at the expense of being able to use
-- quantification to avoid sensitivity confusion, so be careful when
-- counting the number of @lift@ you use when taking the gradient of a
-- function that takes gradients!
--
-----------------------------------------------------------------------------

module Numeric.AD.Variadic.Sparse
  (
  -- * Unsafe Variadic Gradient
    Grad, vgrad, vgrad'
  , Grads, vgrads
  ) where

import Numeric.AD.Internal.Sparse
