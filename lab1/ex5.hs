absInt :: Int -> Int
absInt n | n > 0 = n
        | otherwise = -n

sgn :: Int -> Int
sgn x | x > 0 = 1
        | x == 0 = 0
        | otherwise = -1