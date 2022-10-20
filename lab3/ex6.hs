onlyEven [] = []
onlyEven (x:xs)
    | x `mod` 2 == 0 = x : onlyEven xs
    | otherwise = onlyEven xs

filter' :: (a->Bool) -> [a] -> [a]
filter' f (x:xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs
