import Data.List


numUnique :: (Eq a) => [a] -> Int
numUnique = length . nub
