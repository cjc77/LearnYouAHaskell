import Data.List
import Data.Function (on)

addPolynomials :: (Num b) => [[b]] -> [b]
addPolynomials xs = map sum $ transpose xs


findSublist :: (Eq a) => [a] -> [a] -> Bool
findSublist target list =
    let tLen = length target
    in foldl (\acc x -> if take tLen x == target then True else acc) False (tails list)

clusterPositives :: (Ord a, Num a) => [a] -> [[a]]
clusterPositives xs = groupBy ((==) `on` (>0)) xs


sortByLength :: (Foldable t) => [t a] -> [t a]
sortByLength xs = sortBy (compare `on` length) xs
