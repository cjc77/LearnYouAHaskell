
negate' :: (Num b) => [b] -> [b]
negate' xs = map (negate . abs) xs


-- Sum of all odd squares < n
sumOddSquares :: (Integral a) => a -> a
sumOddSquares n = sum (takeWhile (<n) (filter odd (map (^2) [1..])))


sumOddSquaresComp :: (Integral a) => a -> a
sumOddSquaresComp n = sum . takeWhile(<n) . filter odd . map (^2) $ [1..]

sumOddSquares' :: (Integral a) => a -> a
sumOddSquares' n =
    let oddSquares = filter odd $ map (^2) [1..]
        belowLimit = takeWhile (<n) oddSquares
    in sum belowLimit
