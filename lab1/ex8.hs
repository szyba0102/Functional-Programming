roots :: (Double,Double,Double) -> (Double,Double)
roots (a,b,c) = ((-b-d)/2*a, (-b+d)/2*a)
    where d = sqrt (b*b-4*a*c)

roots2 :: (Double, Double, Double) -> (Double, Double)
roots2 (a, b, c) =
    let d = sqrt (b * b - 4 * a * c)
        e = 2 * a
    in ( (-b - d) / e, (-b + d) / e )
            