

-- f is a function, apply it twice to x
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

cube :: (Num a) => a -> a
cube x = applyTwice (* x) x

-- Take a function and 2 lists. Join the 2 lists by applying the function
-- between corresp. elements
-- Ex: + [1,2,3] [1,2,3] ----> [2,4,6]
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- Take a function and reverse the inputs
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

-- More simple
flipV2 :: (a -> b -> c) -> (b -> a -> c)
flipV2 f y x = f x y
