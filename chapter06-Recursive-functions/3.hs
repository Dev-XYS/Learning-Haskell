(^) :: Num a => a -> Int -> a
x ^ 0 = 1
x ^ n | n > 0 = x * (x Prelude.^ (n - 1))

{- The defined `^` should be used as `2 Prelude.^ 3`. -}
