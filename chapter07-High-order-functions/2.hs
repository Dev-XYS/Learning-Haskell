-- a - function `all`: decide if all elements of a list satisfy a predicate.
all :: (a -> Bool) -> [a] -> Bool
all p = and . map p

-- b - function `any`: decide if any element of a list satisfies a predicate.
any :: (a -> Bool) -> [a] -> Bool
any p = or . map p

-- c - function `takeWhile`: select elements from a list while they satisfy a predicate.
takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x:xs) | p x       = x : Prelude.takeWhile p xs
                   | otherwise = []

-- d - function `dropWhile`: remove elements from a list while they satisfy a predicate.
dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile p (x:xs) | p x       = Prelude.dropWhile p xs
                   | otherwise = (x:xs)
