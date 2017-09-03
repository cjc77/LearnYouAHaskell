
-- Match a number to a string
singleDigitString :: (Integral a ) => a -> String
singleDigitString 0 = "Zero"
singleDigitString 1 = "One"
singleDigitString 2 = "Two"
singleDigitString 3 = "Three"
singleDigitString 4 = "Four"
singleDigitString 5 = "Five"
singleDigitString 6 = "Six"
singleDigitString 7 = "Seven"
singleDigitString 8 = "Eight"
singleDigitString 9 = "Nine"
singleDigitString x = "Not a single digit"


-- Recursive factorial function
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Recursive pow function. This will allow for two inputs
pow :: (Integral a, Integral b) => a -> b -> a
pow a 0 = 1
pow a 1 = a
pow a b = a * pow a (b - 1)

-- Add 2 (x,y) coordinates
addPoints :: (Num a) => (a, a) -> (a, a) -> (a, a)
addPoints (a, b) (c, d) =  (a + c, b + d)

-- Find elements of triples
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- Pattern matching inside of a list comprehension
sumXY :: (Num a) => [(a, a)] -> [a]
sumXY xs = [a + b | (a, b) <- xs]

-- Take the dot product of 2 lists
dotProd :: (Num a) => [a] -> [a] -> a
dotProd [] [] = 0
-- (x:xs) binds head of list to x and tail to xs
dotProd (x:xs) (y:ys) = x * y + (dotProd xs ys)


-- Take a vector and convert it to R^3
vectorR3 :: (Num a) => [a] -> [a]
vectorR3 [] = [0, 0, 0]
vectorR3 (a:[]) = [a, 0, 0]
vectorR3 (a:b:[]) = [a, b, 0]
vectorR3 (a:b:c:_) = [a, b, c]

-- Length function
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- Sum function
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- Find first letter of a string
firstChar :: String -> String
firstChar "" = "<Empty>"
firstChar all@(x:xs) = "First Letter of '" ++ all ++ "' is: " ++ [x]
