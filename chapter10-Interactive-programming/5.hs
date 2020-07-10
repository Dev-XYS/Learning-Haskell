getInt :: IO Int
getInt = do s <- getLine
            return (read s :: Int)

adder :: IO ()
adder = do putStr "How many numbers? "
           n <- getInt
           ns <- sequence (replicate n getInt)
           putStr "The total is "
           putStrLn (show (sum ns))
