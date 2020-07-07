halve :: [a] -> ([a],[a])
halve xs = (take h xs, drop h xs) where h = length xs `div` 2

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x:xs) (y:ys) | x < y     = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort (fst half)) (msort (snd half)) where half = halve(xs)
