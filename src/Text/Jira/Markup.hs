{-|
Module      : Text.Jira.Markup
Copyright   : © 2019 Albert Krewinkel
License     : MIT

Maintainer  : Albert Krewinkel <tarleb@zeitkraut.de>
Stability   : alpha
Portability : portable

Jira markup types.
-}
module Text.Jira.Markup
  ( Block (..)
  , Inline (..)
  ) where

import Data.Text (Text)

-- | Inline Jira markup elements.
data Inline
  = Str Text
  | Space
  deriving (Eq, Ord, Show)

-- | Blocks of text.
newtype Block
  = Para [Inline]
  deriving (Eq, Ord, Show)
