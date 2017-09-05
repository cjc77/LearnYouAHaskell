
-- Recursive fibonacci sequence solver
fibonacci :: (Eq a, Num a, Num p) => a -> p
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci a = fibonacci (a - 1) + fibonacci (a - 2)


-- find the max item in a list using pattern matching
findMax :: (Ord a) => [a] -> a
findMax [] = error "Null list"
findMax [x] = x
findMax (x:xs)
    -- Use where binding to define maxTail as the result of a recursive call
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = findMax xs


-- find the max item in a list using max function
findMax' :: (Ord a) => [a] -> a
findMax' [] = error "Null list"
findMax' [x] = x
findMax' (x:xs) = max' x (findMax' xs)

-- My max version
max' :: Ord a => a -> a -> a
max' a b = (if a > b then a else b)
