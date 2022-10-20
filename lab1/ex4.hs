sgn :: Int -> Int
sgn n = if n<0
    then -1
    else if n==0
        then 0
        else 1

absInt :: Int -> Int
absInt x = if x > 0
    then x
    else -x

min2Int :: (Int,Int) -> Int
min2Int (x,y) = if x > y
    then y
    else x

min3Int :: (Int,Int,Int) -> Int
min3Int (x,y,z) | x < y && x < z = x
                | y < x && y < z = y
                | otherwise = z

min3Int2 :: (Int,Int,Int) -> Int
min3Int2 (x,y,z) = min2Int(min2Int(x,y),min2Int(y,z))

--toEnum :: Int -> Char
--toEnum (x) = ord(x)

toUpper :: Char -> Char
toUpper x = toEnum(1+fromEnum(x))

toLower :: Char -> Char
toLower x = toEnum(fromEnum(x)-1)