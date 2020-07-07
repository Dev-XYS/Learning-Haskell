halve :: [a] -> ([a], [a])
halve xs | length xs `mod` 2 == 0 = (take h xs, drop h xs) where h = length xs `div` 2
