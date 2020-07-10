getInt :: IO Int
getInt = do s <- getLine
            return (read s :: Int)

addN :: Int -> IO Int
addN 0 = do return 0
addN n = do m <- getInt
            s <- addN (n - 1)
            return (m + s)

adder :: IO ()
adder = do putStr "How many numbers? "
           n <- getInt
           s <- addN n
           putStr "The total is "
           putStrLn (show s)
