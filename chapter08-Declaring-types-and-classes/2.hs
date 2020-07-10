data Tree a = Leaf a | Node (Tree a) a (Tree a)
    deriving Show

occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Node l y r) | result == EQ = True
                      | result == LT = occurs x l
                      | result == GT = occurs x r
                            where result = compare x y
