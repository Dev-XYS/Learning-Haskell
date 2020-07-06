-- Solution #1
init_1 xs = take (length xs - 1) xs

-- Solution #2
init_2 xs = reverse (drop 1 (reverse xs))
