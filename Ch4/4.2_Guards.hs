
-- Comment on somebody's age
checkAge :: (Integral a) => a -> String
checkAge a
        | a <= 18 = "You can't vote!"
        | a <= 21 = "You can't drink!"
        | a <= 30 = "You are NOT an adult!"
        | a <= 40 = "Your best days are behind you!"
        | otherwise = "You are so damn old!"


max' :: (Ord a) => a -> a -> a
max' a b
        | a > b = a
        | a == b = error "These values are the same"
        | otherwise = b

-- Instead of...
-- Ex:
-- ghci> (compare) 1 2        LT
myCompare :: (Ord a) => a -> a -> Ordering
myCompare a b
        | a > b = GT
        | a == b = EQ
        | otherwise = LT
