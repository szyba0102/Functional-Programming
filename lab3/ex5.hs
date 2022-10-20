import Data.List

sortDesc :: Ord a => [a] -> [a]
sortDesc xs = (reverse . sort) xs

--f = (+1)
--g = (*2)
--h = (^3)

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs
    | otherwise = filter' p xs

onlyEven = filter' (even)