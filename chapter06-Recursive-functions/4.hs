euclid :: Int -> Int -> Int
euclid 0 n = n
euclid n 0 = n
euclid m n | m < n     = euclid m (n - m)
           | otherwise = euclid (m - n) n

{- The algorithm is slightly modified to process corner cases. -}
