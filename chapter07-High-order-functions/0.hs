altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f g (x:xs) = f x : altMap g f xs

luhnDouble :: Int -> Int
luhnDouble n | d > 9     = d - 9
             | otherwise = d
                   where d = n * 2

luhn :: [Int] -> Bool
luhn = (== 0) . (`mod` 10) . sum . altMap luhnDouble id
