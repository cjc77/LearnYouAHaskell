

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea


squareTriple :: (Num a) => a -> a -> a -> (a,a,a)
squareTriple a b c =
    let (x,y,z) = (a,b,c) in (x*x,y*y,z*z)

calcBMis :: (RealFloat a) => [(a,a)] -> [a]
calcBMis xs = [bmi | (w,h) <- xs, let bmi = w / h ^ 2]


-- Check list of pairs to see if x == y
determineSame :: (Eq a) => [(a,a)] -> [Bool]
determineSame xs = [eq | (x,y) <- xs, let eq = (x == y)]

pairSumAbove100 :: (Ord a, Num a) => [(a,a)] -> [(a,a)]
pairSumAbove100 xs = [(x,y) | (x,y) <- xs, let pairSum = x + y, pairSum > 100]
