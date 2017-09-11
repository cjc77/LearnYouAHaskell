


sumOfSquares :: (Num a) => [a] -> a
sumOfSquares xs = sum $ map (^2) xs
