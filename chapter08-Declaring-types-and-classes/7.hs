data Maybe' a = Nothing' | Just' a

instance Eq a => Eq (Maybe' a) where
    Nothing' == Nothing' = True
    (Just' x) == (Just' y) = x == y
    _ == _ = False

-- Instance declaration of list is omitted.
