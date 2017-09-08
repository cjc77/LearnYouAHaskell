

-- $ functions == function applications
square :: (Num a) => a -> a
square x = x * x

sumOfSquares :: (Num a) => [a] -> a
sumOfSquares xs = sum $ map square xs
