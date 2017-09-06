
-- Map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs


-- Filter
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs
    | otherwise = filter' p xs


-- quicksort using filters
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallSorted = quicksort (filter (<= x) xs)
        bigSorted = quicksort (filter (> x) xs)
    in smallSorted ++ [x] ++ bigSorted


-- Find the largest number divisible by n in a list, xs
largestDivisible :: (Integral t) => t -> [t] -> t
largestDivisible n xs = head (filter p (reverse xs))
    where p x = x `mod` n == 0


-- Take the first word from a string
takeFirst :: [Char] -> [Char]
takeFirst [] = []
takeFirst str = takeWhile (/= ' ') str

-- Sum of all odd squares < n
sumOddSquares :: (Integral a) => a -> a
sumOddSquares n = sum (takeWhile (<n) (filter odd (map (^2) [1..])))

collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `div` 2)
    | odd n = n : collatz (n * 3 + 1)


-- For all starting numbers between 1 and n, how many collatz chains have length > k?
collatzChainLen :: (Integral a) => a -> Int -> Int
collatzChainLen n k = length (filter long (map collatz [1..n]))
    where long xs = length xs > k
