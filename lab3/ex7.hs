filter' :: (a->Bool) -> [a] -> [a]
filter' f [] = []
filter' f (x:xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs

onlyEven = filter' (\x -> if x `mod` 2 == 0 then True else False) 
f2 = (\x -> if x `mod` 2 == 0 then True else False) 