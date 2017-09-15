import Data.List

solveRPN :: String -> Float
solveRPN = head . foldl parseInput [] . words
    where   parseInput (x:y:ys) "*" = (x * y):ys
            parseInput (x:y:ys) "+" = (x + y):ys
            parseInput (x:y:ys) "-" = (y - x):ys
            parseInput (x:y:ys) "/" = (y / x):ys
            parseInput (x:y:ys) "^" = (y ** x):ys
            parseInput (x:xs) "ln" = log x:xs
            parseInput xs "sum" = [sum xs]
            parseInput xs numberStr = read numberStr:xs
