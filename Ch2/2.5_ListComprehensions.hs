-- x*2 from 1-10
mult2Under10 = [x * 2 | x <- [1..10]]

-- Add some predicates
mult2Under10' = [x * 2 | x <- [1..10], x * 2 >= 12]

-- Complicated comprehension
pickyList = [x | x <- [1..100], x `mod` 7 == 3]


boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x ]

anotherPickyList = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

cartesian = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11] ]

-- Cartesian product of 2 input lists
uDefCartesian xs ys = [x * y | x <- xs, y <- ys]

-- Even values of the cartesian product of 2 input lists
uDefEvenCartesian xs ys = [x * y | x <- xs, y <- ys, (x * y) `mod` 2 == 0]

findLength xs = sum [ 1 | _ <- xs ]

removeLowerCase str = [ c | c <- str, c `elem` ['A'..'Z'] || c `elem` [' ', '.', ',', '-']]

removeOdds xxs = [ [x | x <- xs, even x] | xs <- xxs]
