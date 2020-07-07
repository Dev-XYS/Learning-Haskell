-- Solution a: using a conditional expression
safetail_1 :: [a] -> [a]
safetail_1 xs = if null xs then [] else tail xs

-- Solution b: using guarded equations
safetail_2 :: [a] -> [a]
safetail_2 xs | null xs = []
              | otherwise = tail xs

-- Solution c: using pattern matching
safetail_3 :: [a] -> [a]
safetail_3 [] = []
safetail_3 (_:xs) = xs
