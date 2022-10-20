


f3 :: IO String
f3 = do 
    l1 <- getLine 
    l2 <- return (l1 ++ l1)
print[l1,l2]