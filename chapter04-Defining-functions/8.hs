luhnDouble :: Int -> Int
luhnDouble n | d > 9     = d - 9
             | otherwise = d
                   where d = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn n1 n2 n3 n4 | sum `mod` 10 == 0 = True
                 | otherwise         = False
                       where sum = luhnDouble n1 + n2 + luhnDouble n3 + n4
