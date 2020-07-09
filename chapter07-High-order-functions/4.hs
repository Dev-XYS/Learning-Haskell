dec2int :: [Int] -> Int
dec2int = foldl (\n n' -> n * 10 + n') 0
