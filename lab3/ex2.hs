map' :: (a->b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

doubleElems = map' (\x -> x^2)
sqrElems = map' (\x -> sqrt x)