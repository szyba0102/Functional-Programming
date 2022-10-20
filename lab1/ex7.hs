not' :: Bool -> Bool
not' b =case b of
    True -> False
    False -> True

absInt n = 
    case (n>=0) of
        True -> n
        _ -> -n

isItTheAnswer :: String -> Bool
isItTheAnswer n = 
    case (n=="Love") of
        True -> True
        _ -> False

or' :: (Bool,Bool) -> Bool
or' (x,y) = 
    case x || y of
        True -> True
        False -> False