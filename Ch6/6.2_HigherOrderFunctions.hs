

-- f is a function, apply it twice to x
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

cube :: (Num a) => a -> a
cube x = applyTwice (* x) x

-- Take a function and 2 lists. Join the 2 lists by applying the function
-- between corresp. elements
-- Ex: + [1,2,3] [1,2,3] ----> [2,4,6]
