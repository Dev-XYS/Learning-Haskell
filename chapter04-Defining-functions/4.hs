-- Solution #1
or_1 :: Bool -> Bool -> Bool
False `or_1` False = False
False `or_1` True = True
True `or_1` False = True
True `or_1` True = True

-- Solution #2
or_2 :: Bool -> Bool -> Bool
False `or_2` False = False
_ `or_2` _ = True

-- Solution #3
or_3 :: Bool -> Bool -> Bool
False `or_3` b = b
True `or_3` _ = True

-- Solution #4
or_4 :: Bool -> Bool -> Bool
b `or_4` c | b == c    = b
           | otherwise = True
