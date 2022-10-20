--sum'2 :: Num a => [a] -> a
--sum'2 xs = loop 0 xs
--where loop acc [] = acc
--loop acc (x:xs) = loop (x + acc) xs

-- sum'3 :: Num a => [a] -> a
-- sum'3 = loop 0 where 
-- loop acc [] = acc
-- loop acc (x:xs) = loop (x + acc) xs
{-# LANGUAGE BangPatterns #-}
sum'4 :: Num a => [a] -> a
sum'4 = loop 0 where 
loop !acc [] = acc
loop !acc (x:xs) = loop (x + acc) xs

prod'2 :: Num a => [a] -> a
prod'2 = lop 1 where 
lop acc [] = acc
lop acc (x:xs) = lop (x * acc) xs

--length'2 :: [a] -> Int
--length'2 = loop 0 where
--loop acc [] = acc
--loop acc (x:xs) = loop (1 + acc) xs

fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _ = False
