add2T :: Num a => (a,a) -> a
add2T (x,y) = x + y

add2C :: Num a => a -> (a -> a) 
add2C x y = x + y

--MyFun x = 2 * x

add3T :: Num a => (a, a, a) -> a
add3T (x,y,z) = x + y + z

add3C :: Num a => a -> a -> a -> a
add3C x y z = x + z + y

