import Data.List

addPolynomials :: (Num b) => [[b]] -> [b]
addPolynomials xs = map sum $ transpose xs


findSublist :: (Eq a) => [a] -> [a] -> Bool
findSublist target list =
    let tLen = length target
    in foldl (\acc x -> if take tLen x == target then True else acc) False (tails list)
