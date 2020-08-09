newtype ZipList a = Z [a]
    deriving Show

instance Functor ZipList where
    -- fmap :: (a -> b) -> ZipList a -> ZipList b
    fmap g (Z xs) = Z (map g xs)

instance Applicative ZipList where
    -- pure :: a -> ZipList a
    pure x = Z [x]
    -- (<*>) :: ZipList (a -> b) -> ZipList a -> ZipList b
    (Z gs) <*> (Z xs) = Z $ map (\(f, x) -> f x) (zip gs xs)
