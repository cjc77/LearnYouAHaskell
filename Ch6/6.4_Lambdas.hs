

collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `div` 2)
    | odd n = n : collatz (n * 3 + 1)



-- For all starting numbers between 1 and n, how many collatz chains have length > k?
-- Using lambdas
collatzChainLen :: (Integral a) => a -> Int -> Int
collatzChainLen n k = length (filter (\xs -> length xs > k) (map collatz [1..n]))


-- Sum together x and y in (x,y) pairs using lambdas
sumTuples :: (Num b) => [(b,b)] -> [b]
sumTuples xs = map (\(a,b) -> a + b) xs


-- FUNCTIONS ARE CURRIED BY DEFAULT SO THESE 2 FUNCTIONS ARE EQUIVALENT

addThree :: (Num a) => a -> a -> a -> a
addThree x y z = x + y + z

addThreeCurry :: (Num a) => a -> a -> a -> a
addThreeCurry = \x -> \y -> \z -> x + y + z


flipCurry :: (a -> b -> c) -> b -> a -> c
flipCurry f = \x y -> f y x
