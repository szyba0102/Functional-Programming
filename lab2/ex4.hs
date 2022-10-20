fib :: (Num a, Eq a) => a -> a
fib n = if n == 0 || n == 1 then n
    else fib (n - 2) + fib (n - 1)


sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a 
prod' [] = 1
prod' (x:y) = x * prod' y

length' :: [a] -> Int 
length' [] = 0
length' (_:y) = 1 + length' y

or' :: [Bool] -> Bool -- or' [True, False, True] = True
or' [] = False
or' (x:y) = x || or' y

and' :: [Bool] -> Bool -- and' [True, False, True] = False
and' (x:y) = x && and' y

elem' :: Eq a => a -> [a] -> Bool -- elem' 3 [1,2,3] = True
elem' z (x:y) = if x == z 
    then True
    else if y == []
        then False
        else elem' z y

doubleAll :: Num t => [t] -> [t] -- doubleAll [1,2] = [2,4]
doubleAll [] = []
doubleAll (x:y) = x*2 : doubleAll y

squareAll :: Num t => [t] -> [t]
squareAll [] = []
squareAll (x:y) = x^2 : squareAll y

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [] = []
selectEven (x:y) = if x `mod` 2 == 0 
                then x : selectEven y
                else selectEven y