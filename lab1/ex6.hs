not' :: Bool -> Bool
not' True = False
not' False = True

isItTheAnswer :: String -> Bool
isItTheAnswer "Love" = True
isItTheAnswer _ = False

or' :: (Bool,Bool) -> Bool
or' (x,y) = x || y

and' :: (Bool,Bool) -> Bool
and' (x,y) = x && y

xor' :: (Bool, Bool) -> Bool
xor' (x,y) = and'(or'(x,y),not'(and'(x,y)))
