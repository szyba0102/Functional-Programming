sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs


sumSqr' :: Num a => [a] -> a
sumSqr' [] = 0
sumSqr' (x:xs) = (x^2) + sumSqr' xs

sumWith :: Floating a => (a -> a) -> [a] -> a
sumWith _ [] = 0
sumWith f (x:xs) = f x + sumWith f xs

sum2 = sumWith (\e -> e)
sumSqr2 = sumWith (\x -> x^2)
sumCube = sumWith (\x -> x^3)
sumAbs = sumWith (\x -> abs x)

listLength = sumWith(\x -> 1)

prod' :: Num a => [a] -> a
prod' [] = 1
prod' (x:xs) = x * prod' xs

prodWith :: Num a => (a->a) -> [a] -> a
prodWith _ [] = 1
prodWith f (x:xs) = f x * prodWith f xs

prod = prodWith (\x -> x)
prodSqr = prodWith (\x -> x^2)

sumSqrt = sumWith (\x -> sqrt(x))