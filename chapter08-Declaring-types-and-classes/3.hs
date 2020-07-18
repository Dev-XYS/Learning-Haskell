data Tree a = Leaf a | Node (Tree a) (Tree a)

count :: Tree a -> Int
count (Leaf _) = 1
count (Node l r) = count l + count r + 1

balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node l r) = abs (lcount - rcount) <= 1 && balanced l && balanced r
                          where lcount = count l; rcount = count r
