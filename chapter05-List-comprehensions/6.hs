factors :: Int -> [Int]
factors n = [n' | n' <- [1..n], n `mod` n' == 0]

isPerfect :: Int -> Bool
isPerfect n = n * 2 == sum (factors n)

perfect :: Int -> [Int]
perfect n = [n' | n' <- [1..n], isPerfect n']
