-- Adding type declarations to a simple function
removeLowerCase :: [Char] -> [Char]
removeLowerCase st = [ c | c <- st, c `elem` ['A'..'Z'] || c `elem` [',', '.'] ]

first :: [Char] -> Char
first st = head st

final :: [Char] -> Char
final st = last st

addThreeInts :: Int -> Int -> Int -> Int
addThreeInts x y z = x + y + z

-- Integer is unbounded but less efficient. Only really use for large numbers
factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r
