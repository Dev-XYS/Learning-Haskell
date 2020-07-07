and :: [Bool] -> Bool
and [] = True
and (x:xs) = x && Prelude.and xs

concat :: [[a]] -> [a]
concat [] = []
concat (l:ls) = l ++ Prelude.concat ls

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate n x = x : Prelude.replicate (n - 1) x

(!!) :: [a] -> Int -> a
(x:xs) !! 0 = x
(x:xs) !! n = xs Prelude.!! (n - 1)

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem e (x:xs) = e == x || Prelude.elem e xs
