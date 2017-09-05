
-- Make a list of x, n times
replicate' :: (Num a, Ord a) => a -> a -> [a]
replicate' x n
    | n <= 0 = []
    | otherwise = x:replicate' x (n-1)

-- take n numbers from a list
take' :: Int -> [b] -> [b]
take' n _
    | n <= 0 = []
-- empty list
take' _ [] = []
take' n (x:xs) = x : take (n-1) xs


-- make a list from three numerical inputs
attach :: a -> [a] -> [a]
attach x xs = x:xs


reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys


elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem a xs
