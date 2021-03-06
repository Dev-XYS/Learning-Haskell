-- This is a hypothetical program which does not run in GHCi.

import Data.Monoid

instance Monoid b => Monoid (a -> b) where
    -- mempty :: a -> b
    mempty _ = mempty
    -- mappend :: (a -> b) -> (a -> b) -> a -> b
    (f `mappend` g) x = f x `mappend` g x
