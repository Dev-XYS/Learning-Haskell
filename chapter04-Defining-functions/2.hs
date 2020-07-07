-- Solution a: using `head` and `tail`
third_1 :: [a] -> a
third_1 xs = head (tail (tail xs))

-- Solution b: using list indexing `!!`
third_2 :: [a] -> a
third_2 xs = xs !! 2

-- Solution c: using pattern matching
third_3 :: [a] -> a
third_3 (_:_:x:_) = x
