

collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `div` 2)
    | odd n = n : collatz (n * 3 + 1)



-- For all starting numbers between 1 and n, how many collatz chains have length > k?
-- Using lambdas
collatzChainLen :: (Integral a) => a -> Int -> Int
collatzChainLen n k = length (filter (\xs -> length xs > k) (map collatz [1..n]))
