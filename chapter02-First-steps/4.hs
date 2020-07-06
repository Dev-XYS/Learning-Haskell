-- Solution #1
last_1 xs = xs !! (length xs - 1)

-- Solution #2
last_2 xs = head (drop (length xs - 1) xs)
